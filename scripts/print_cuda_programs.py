"""Print programs in a measurement record file.

Usage:
# Print all programs
python3 print_programs.py --filename 'dataset/measure_records/e5-2673/([12b88bedece6984af589a28b43e0f3c4,1,56,56,64,3,3,64,128,1,1,1,128,1,28,28,128],llvm).json'
# Print a specific program
python3 print_programs.py --filename 'dataset/measure_records/e5-2673/([12b88bedece6984af589a28b43e0f3c4,1,56,56,64,3,3,64,128,1,1,1,128,1,28,28,128],llvm).json' --idx 31
"""

import argparse

import tvm
from tvm import auto_scheduler
from tvm.auto_scheduler import ComputeDAG, LayoutRewriteOption
from tvm.auto_scheduler.measure import recover_measure_input
from tvm.auto_scheduler.workload_registry import workload_key_to_tensors

from common import load_and_register_tasks
from tvm import te

def print_program(index, inp, res):
    print("inp.task.target", inp.task.target)
    # inp.task.target = tvm.target.Target("cuda")
    inp = recover_measure_input(inp, True)
    print("inp state", inp.state)
    print("inp.task", inp.task)
    print("inp.task.compute_dag", inp.task.compute_dag)
    task = inp.task
    sch, args = task.compute_dag.apply_steps_from_state(inp.state)
    
    
    with tvm.target.Target("cuda"):
        lowered_func = tvm.lower(sch, args, name="my_kernel")
        print("lowered_func", lowered_func)
    
    cuda_module = tvm.build(sch, args, target="cuda", name="my_kernel")
    print("cuda_module", cuda_module)
    # cuda_source_code = cuda_module.get_source("ll")
    print(cuda_module.imported_modules[0].get_source())
    # print("CUDA Source Code:", cuda_source_code)
    #     lib = tvm.build(lowered_func, target="cuda")
    #     cuda_source = lib.get_source("cuda")
    # print("CUDA Source Code:", cuda_source)
    exit()
    
   
    # cuda_module = tvm.build(sch, args, target="llvm", name="my_kernel")

    # cuda_source_code = cuda_module.get_source("s")
    # print(cuda_source_code)
    # exit()
    # Define block and thread axes
    
    
    # block_x = te.thread_axis("blockIdx.x")
    # block_y = te.thread_axis("blockIdx.y")
    # thread_x = te.thread_axis("threadIdx.x")
    # thread_y = te.thread_axis("threadIdx.y")
    
    # for arg in args:
    #     if isinstance(arg.op, te.tensor.PlaceholderOp):
    #         continue
    #     if len(arg.shape) >= 2:
    #         bx, tx = sch[arg].split(arg.op.axis[0], factor=32)
    #         by, ty = sch[arg].split(arg.op.axis[1], factor=32)
            

    #         sch[arg].bind(bx, block_x)
    #         sch[arg].bind(by, block_y)
    #         sch[arg].bind(tx, thread_x)
    #         sch[arg].bind(ty, thread_y)
    #     elif len(arg.shape) == 1:
    #         bx, tx = sch[arg].split(arg.op.axis[0], factor=32)
    #         sch[arg].bind(bx, block_x)
    #         sch[arg].bind(tx, thread_x)

    # sch[args[-1]].bind(sch[args[-1]].op.axis[0], block_x)
    # sch[args[-1]].bind(sch[args[-1]].op.axis[1], thread_x)
    
    cuda_module = tvm.build(sch, args, target="llvm", name="my_kernel")

    cuda_source_code = cuda_module.get_source("ll")
    print(cuda_source_code)
    

    print("=" * 60)
    print(f"Index: {index}")
    print(f"Time cost (second): {res.costs}")
    print("Program:")
    print("inp", inp)
    


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--filename", type=str, required=True)
    parser.add_argument("--idx", type=int)
    args = parser.parse_args()

    print("Load tasks...")
    tasks = load_and_register_tasks()

    inputs, results = auto_scheduler.RecordReader(args.filename).read_lines()
    
    
    if args.idx is None:
        for i in range(len(inputs)):
            print_program(i, inputs[i], results[i])
    else:
        print_program(args.idx, inputs[args.idx], results[args.idx])

# python3 print_cuda_programs.py --filename 'dataset_gpu/measure_records/k80/([0bcb8746286db050cd088f375c85372d,1,64,64,128,6,6,32,128,1,64,64,32],cuda).json' --idx 0