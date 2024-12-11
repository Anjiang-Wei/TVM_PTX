import tvm
from tvm import te

# Matrix dimensions
N, M, K = 1024, 1024, 1024

# Define the computation for matrix multiplication
A = te.placeholder((N, K), name="A", dtype="float32")
B = te.placeholder((K, M), name="B", dtype="float32")
k = te.reduce_axis((0, K), name="k")
C = te.compute(
    (N, M),
    lambda i, j: te.sum(A[i, k] * B[k, j], axis=k),
    name="C"
)

# Create a schedule
s = te.create_schedule(C.op)

# Define block and thread axes
block_x = te.thread_axis("blockIdx.x")
block_y = te.thread_axis("blockIdx.y")
thread_x = te.thread_axis("threadIdx.x")
thread_y = te.thread_axis("threadIdx.y")
print("S[A]", s[A])
print("S[B]", s[B])
print("s[C]", s[C])

# Split the computation into blocks and threads
bx, tx = s[C].split(C.op.axis[0], factor=32)
by, ty = s[C].split(C.op.axis[1], factor=32)

# Bind the split axes to block and thread axes
s[C].bind(bx, block_x)
s[C].bind(by, block_y)
s[C].bind(tx, thread_x)
s[C].bind(ty, thread_y)

print("s", s)
print("A", A)
print("B", B)
print("C", C)
print(isinstance(A.op, te.tensor.PlaceholderOp))
print(isinstance(B.op, te.tensor.PlaceholderOp))
print(isinstance(C.op, te.tensor.BaseComputeOp))

with tvm.target.Target("cuda"):
    lowered_func = tvm.lower(s, [A, B, C], name="my_kernel")
    print("lowered_func", lowered_func)
    
# Compile the function for CUDA
target = "cuda"
func = tvm.build(s, [A, B, C], target=target, name="matrix_mult")

# Display the generated CUDA code
print(func.imported_modules[0].get_source())
