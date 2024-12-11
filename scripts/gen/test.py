# import tvm
# from tvm import te

# # Define placeholders
# P1 = te.placeholder((1, 15, 15, 80), name="placeholder1")
# P2 = te.placeholder((1, 1, 80, 200), name="placeholder2")
# P3 = te.placeholder((1, 1, 1, 200), name="placeholder3")

# # Padded input
# PaddedInput = te.compute(P1.shape, lambda nn, yy, xx, rc: P1[nn, yy, xx, rc])

# # Convolution
# ry, rx, rc = te.reduce_axis((0, 1)), te.reduce_axis((0, 1)), te.reduce_axis((0, 80))
# Conv2dOutput = te.compute(
#     (1, 15, 15, 200),
#     lambda nn, yy, xx, ff: te.sum(
#         PaddedInput[nn, yy + ry, xx + rx, rc] * P2[ry, rx, rc, ff], axis=[ry, rx, rc]
#     ),
# )

# # T_add
# T_add = te.compute(
#     Conv2dOutput.shape,
#     lambda ax0, ax1, ax2, ax3: Conv2dOutput[ax0, ax1, ax2, ax3] + P3[ax0, 0, 0, ax3] + 3.0,
# )

# # Clamp and divide
# compute = te.compute(
#     T_add.shape,
#     lambda i0, i1, i2, i3: te.max(te.min(T_add[i0, i1, i2, i3], 6.0), 0.0),
# )
# T_divide = te.compute(
#     compute.shape,
#     lambda ax0, ax1, ax2, ax3: compute[ax0, ax1, ax2, ax3] / 6.0,
# )

# # T_multiply
# T_multiply = te.compute(
#     T_divide.shape,
#     lambda ax0, ax1, ax2, ax3: T_add[ax0, ax1, ax2, ax3] * T_divide[ax0, ax1, ax2, ax3],
# )

# # Schedule
# s = te.create_schedule(T_multiply.op)

# # Cache intermediate computations
# T_add_cache = s.cache_read(T_add, "shared", [T_multiply])
# T_divide_cache = s.cache_read(T_divide, "shared", [T_multiply])

# # Bind to CUDA threads
# bx, tx = s[T_multiply].split(T_multiply.op.axis[3], factor=32)
# s[T_multiply].bind(bx, te.thread_axis("blockIdx.x"))
# s[T_multiply].bind(tx, te.thread_axis("threadIdx.x"))

# print(P1)
# print(P2)
# print(P3)
# print(T_multiply)

# print("============================================")
# print(s[P1])
# print(s[P2])
# print(s[P3])
# print(s[T_multiply])
# # Generate CUDA code
# func = tvm.build(s, [P1, P2, P3, T_multiply], target="cuda")
# print(func.imported_modules[0].get_source())


import tvm
from tvm import te

# Define placeholders
P1 = te.placeholder((1, 15, 15, 80), name="placeholder1")
P2 = te.placeholder((1, 1, 80, 200), name="placeholder2")
P3 = te.placeholder((1, 1, 1, 200), name="placeholder3")

# Padded input
PaddedInput = te.compute(
    P1.shape, lambda nn, yy, xx, rc: P1[nn, yy, xx, rc], name="PaddedInput"
)

# Convolution
ry, rx, rc = te.reduce_axis((0, 1)), te.reduce_axis((0, 1)), te.reduce_axis((0, 80))
Conv2dOutput = te.compute(
    (1, 15, 15, 200),
    lambda nn, yy, xx, ff: te.sum(
        PaddedInput[nn, yy + ry, xx + rx, rc] * P2[ry, rx, rc, ff], axis=[ry, rx, rc]
    ),
    name="Conv2dOutput"
)

# T_add
T_add = te.compute(
    Conv2dOutput.shape,
    lambda ax0, ax1, ax2, ax3: Conv2dOutput[ax0, ax1, ax2, ax3] + P3[ax0, 0, 0, ax3] + 3.0,
    name="T_add"
)

# Clamp and divide
compute = te.compute(
    T_add.shape,
    lambda i0, i1, i2, i3: te.max(te.min(T_add[i0, i1, i2, i3], 6.0), 0.0),
    name="compute"
)
T_divide = te.compute(
    compute.shape,
    lambda ax0, ax1, ax2, ax3: compute[ax0, ax1, ax2, ax3] / 6.0,
    name="T_divide"
)

# T_multiply
T_multiply = te.compute(
    T_divide.shape,
    lambda ax0, ax1, ax2, ax3: T_add[ax0, ax1, ax2, ax3] * T_divide[ax0, ax1, ax2, ax3],
    name="T_multiply"
)

# Schedule
s = te.create_schedule(T_multiply.op)

# Cache intermediate computations
T_add_cache = s.cache_read(T_add, "shared", [T_multiply])
T_divide_cache = s.cache_read(T_divide, "shared", [T_multiply])

# Bind to CUDA threads
bx, tx = s[T_multiply].split(T_multiply.op.axis[3], factor=32)
s[T_multiply].bind(bx, te.thread_axis("blockIdx.x"))
s[T_multiply].bind(tx, te.thread_axis("threadIdx.x"))

# Lower to CUDA
target = "cuda"
# ctx = tvm.cuda()

# Build and verify CUDA code
func = tvm.build(s, [P1, P2, P3, T_multiply], target=target)

# Print generated CUDA source
print(func.imported_modules[0].get_source())
