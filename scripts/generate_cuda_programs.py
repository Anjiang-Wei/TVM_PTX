# python3 generate_cuda_programs.py --seed 42 --num_files 210 --output_path dataset_gpu/measure_records/k80/output2 --max_retries 10

import os
import random
import argparse
import subprocess
import logging
import shutil

LINES_COUNT_LIMIT = 1000

def setup_logging():
    logging.basicConfig(level=logging.DEBUG,
                        format="%(asctime)s - %(levelname)s - %(message)s")

def find_json_files(directory):
    logging.info(f"Searching for JSON files in directory: {directory}")
    json_files = [f for f in os.listdir(directory) if f.endswith(".json")]
    if not json_files:
        raise ValueError(f"No JSON files found in the directory: {directory}")
    return json_files

def count_lines_in_file(file_path):
    with open(file_path, 'r') as file:
        return sum(1 for _ in file)

def generate_cuda_program(filename, idx, output_path):
    output_dir = os.path.join(output_path, os.path.splitext(os.path.basename(filename))[0])
    os.makedirs(output_dir, exist_ok=True)
    output_file = os.path.join(output_dir, f"idx-{idx}.cu")

    if os.path.exists(output_file):
        return True

    cmd = ["python3", "print_cuda_programs.py", "--filename", filename, "--idx", str(idx)]
    logging.info(f"Executing command: {' '.join(cmd)}")

    try:
        result = subprocess.run(cmd, capture_output=True, text=True, check=True)
        line_count = result.stdout.count("\n")
        logging.info(f"Generated CUDA program has {line_count} lines")
        if line_count > LINES_COUNT_LIMIT:
            return False
            
        with open(output_file, "w") as f:
            f.write(result.stdout)
        logging.info(f"CUDA program saved to: {output_file}")
        return True

        # Count lines in the generated file

        return line_count < 1000
    except subprocess.CalledProcessError as e:
        logging.error(f"Failed to generate CUDA program for idx-{idx}: {e.stderr}")
        return False

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--seed", type=int, required=True, help="Random seed for reproducibility")
    parser.add_argument("--num_files", type=int, required=True, help="Number of JSON files to process")
    parser.add_argument("--output_path", type=str, required=True, help="Path to save generated CUDA programs")
    parser.add_argument("--max_retries", type=int, default=5, help="Maximum number of retries per file")
    args = parser.parse_args()

    random.seed(args.seed)
    setup_logging()

    input_directory = "dataset_gpu/measure_records/k80/"
    json_files = find_json_files(input_directory)
    selected_files = set()

    while len(selected_files) < args.num_files:
        json_file = random.choice(json_files)
        if json_file in selected_files:
            continue

        full_path = os.path.join(input_directory, json_file)
        logging.info(f"Processing file: {full_path}")

        num_lines = count_lines_in_file(full_path)
        logging.info(f"Number of configurations in file {json_file}: {num_lines}")

        generated_count = 0
        retries = 0
        while generated_count < 2:
            idx = random.randint(0, num_lines - 1)  # Use the number of lines as the range for indices
            success = generate_cuda_program(full_path, idx, args.output_path)

            if success:
                generated_count += 1
                retries = 0
            else:
                retries += 1
                logging.warning(f"Retry {retries} for configuration idx-{idx} in file {json_file}")
                if retries >= args.max_retries:
                    logging.error(f"Failed to generate CUDA program for {json_file} after {args.max_retries} attempts")
                    logging.info(f"Removing output directory for {json_file}")
                    output_dir = os.path.join(args.output_path, os.path.splitext(os.path.basename(json_file))[0])
                    if os.path.exists(output_dir):
                        logging.info(f"Removing output directory and its contents: {output_dir}")
                        shutil.rmtree(output_dir)  # Use shutil.rmtree to remove directory and its contents
                    break  # Exit the loop to try another JSON file

        if generated_count == 2:
            selected_files.add(json_file)
            logging.info(f"Processed {len(selected_files)} json files.")

if __name__ == "__main__":
    main()
