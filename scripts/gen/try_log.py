import tvm
from tvm import te, auto_scheduler
from tvm import relay
import numpy as np

# Example function to get CUDA source code
def get_cuda_source(task, state):
    # Create a schedule from the task and state
    sch, args = task.compute_dag.apply_steps_from_state(state)
    
    # Lower the schedule to get the IRModule
    mod = tvm.lower(sch, args, simple_mode=True)
    
    # Build the module to generate CUDA code
    target = "cuda"
    lib = tvm.build(mod, target=target)
    
    # Extract the CUDA source code
    cuda_source = lib.get_source("cuda")
    return cuda_source

# Example usage
# Define a computational workload
@auto_scheduler.register_workload
def matmul(N, M, K):
    A = te.placeholder((N, K), name="A", dtype="float32")
    B = te.placeholder((K, M), name="B", dtype="float32")
    k = te.reduce_axis((0, K), name="k")
    C = te.compute(
        (N, M),
        lambda i, j: te.sum(A[i, k] * B[k, j], axis=k),
        name="C",
    )
    return [A, B, C]

# Auto-scheduling
target = "cuda"
N, M, K = 512, 512, 512
task = auto_scheduler.SearchTask(func=matmul, args=(N, M, K), target=target)

# Create an initial state
log_file = "test.json"
measure_ctx = auto_scheduler.LocalRPCMeasureContext(min_repeat_ms=300)
tuner = auto_scheduler.TaskScheduler([task], task_weights=[1])
tuner.tune(
    auto_scheduler.TuningOptions(
        num_measure_trials=10,
        runner=measure_ctx.runner,
        measure_callbacks=[auto_scheduler.RecordToFile(log_file)],
    )
)

# Load the best state from the tuning log
inp, _ = task.apply_best(log_file)

# Print task and state
print("inp state", inp.state)
print("inp task", inp.task)

# Get CUDA source code
cuda_code = get_cuda_source(inp.task, inp.state)
print("CUDA Source Code:")
print(cuda_code)
