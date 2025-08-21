#!/usr/bin/env python3

import os
import subprocess
import sys
from pathlib import Path
from concurrent.futures import ThreadPoolExecutor, as_completed
import shutil

def check_nvcc():
    """Check if nvcc is available in the system."""
    try:
        result = subprocess.run(['nvcc', '--version'], 
                              capture_output=True, text=True, check=True)
        print("NVCC found:")
        print(result.stdout.split('\n')[3])  # Print version line
        return True
    except (subprocess.CalledProcessError, FileNotFoundError):
        print("Error: nvcc not found. Please make sure CUDA toolkit is installed and nvcc is in PATH.")
        return False

def compile_cu_to_ptx(cu_file_path, ptx_file_path):
    """Compile a single .cu file to .ptx using nvcc with -sm80 flag."""
    try:
        # Ensure the output directory exists
        ptx_file_path.parent.mkdir(parents=True, exist_ok=True)
        
        # Compile command with -sm80 flag
        cmd = [
            'nvcc',
            '-ptx',
            '-arch=sm_80',
            '-o', str(ptx_file_path),
            str(cu_file_path)
        ]
        
        result = subprocess.run(cmd, capture_output=True, text=True)
        
        if result.returncode == 0:
            return True, f"✓ Compiled: {cu_file_path.relative_to(Path.cwd())} -> {ptx_file_path.relative_to(Path.cwd())}"
        else:
            return False, f"✗ Failed to compile {cu_file_path}: {result.stderr.strip()}"
            
    except Exception as e:
        return False, f"✗ Exception compiling {cu_file_path}: {str(e)}"

def find_cuda_files(cuda_dir):
    """Find all .cu files in the CUDA directory."""
    cuda_path = Path(cuda_dir)
    if not cuda_path.exists():
        print(f"Error: CUDA directory '{cuda_dir}' does not exist.")
        return []
    
    cu_files = list(cuda_path.rglob("*.cu"))
    print(f"Found {len(cu_files)} .cu files in {cuda_dir}")
    return cu_files

def main():
    # Set up paths
    script_dir = Path(__file__).parent
    cuda_dir = script_dir / "CUDA"
    ptx_dir = script_dir / "PTX"
    
    print("CUDA to PTX Compiler")
    print("=" * 50)
    print(f"CUDA directory: {cuda_dir}")
    print(f"PTX directory: {ptx_dir}")
    print()
    
    # Check if nvcc is available
    if not check_nvcc():
        sys.exit(1)
    
    # Find all CUDA files
    cu_files = find_cuda_files(cuda_dir)
    if not cu_files:
        print("No .cu files found. Exiting.")
        sys.exit(1)
    
    # Create PTX directory if it doesn't exist
    ptx_dir.mkdir(exist_ok=True)
    
    # Prepare compilation tasks
    compilation_tasks = []
    for cu_file in cu_files:
        # Calculate relative path from CUDA directory
        relative_path = cu_file.relative_to(cuda_dir)
        
        # Create corresponding PTX path
        ptx_file = ptx_dir / relative_path.with_suffix('.ptx')
        
        compilation_tasks.append((cu_file, ptx_file))
    
    # Calculate optimal number of workers for parallel compilation
    import multiprocessing
    max_workers = min(multiprocessing.cpu_count() * 2, len(compilation_tasks), 30)  # Cap at 30 workers
    
    print(f"Starting compilation of {len(compilation_tasks)} files...")
    print(f"Using -arch=sm_80 flag for compilation")
    print(f"Using {max_workers} parallel workers for compilation")
    print()
    
    # Compile files in parallel
    successful_compilations = 0
    failed_compilations = 0
    
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        # Submit all compilation tasks
        future_to_task = {
            executor.submit(compile_cu_to_ptx, cu_file, ptx_file): (cu_file, ptx_file)
            for cu_file, ptx_file in compilation_tasks
        }
        
        # Process completed tasks with progress indicator
        completed_count = 0
        for future in as_completed(future_to_task):
            cu_file, ptx_file = future_to_task[future]
            try:
                success, message = future.result()
                completed_count += 1
                
                # Show progress
                progress = (completed_count / len(compilation_tasks)) * 100
                print(f"[{progress:5.1f}%] {message}")
                
                if success:
                    successful_compilations += 1
                else:
                    failed_compilations += 1
                    
            except Exception as e:
                completed_count += 1
                progress = (completed_count / len(compilation_tasks)) * 100
                print(f"[{progress:5.1f}%] ✗ Exception occurred: {e}")
                failed_compilations += 1
    
    # Print summary
    print()
    print("Compilation Summary")
    print("=" * 50)
    print(f"Total files: {len(compilation_tasks)}")
    print(f"Successful: {successful_compilations}")
    print(f"Failed: {failed_compilations}")
    
    if failed_compilations == 0:
        print("\n🎉 All files compiled successfully!")
    else:
        print(f"\n⚠️  {failed_compilations} files failed to compile.")
        sys.exit(1)

if __name__ == "__main__":
    main()
