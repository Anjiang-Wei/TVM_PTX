#!/usr/bin/env python3
"""
Script to extract program pairs from train.jsonl into separate .cu files.

For each pair_id=x, creates:
- Directory: x/
- Files: x/program1.cu (program_1_code) and x/program2.cu (program_2_code)
"""

import json
import os
import sys
from pathlib import Path


def extract_pairs(jsonl_file, output_dir=None):
    """
    Extract program pairs from JSONL file into separate directories and .cu files.
    
    Args:
        jsonl_file (str): Path to the train.jsonl file
        output_dir (str): Output directory (defaults to same dir as jsonl_file)
    """
    jsonl_path = Path(jsonl_file)
    
    if not jsonl_path.exists():
        print(f"Error: File {jsonl_file} not found")
        return False
    
    # Set output directory to same directory as JSONL file if not specified
    if output_dir is None:
        output_dir = jsonl_path.parent
    else:
        output_dir = Path(output_dir)
    
    # Create output directory if it doesn't exist
    output_dir.mkdir(parents=True, exist_ok=True)
    
    print(f"Reading from: {jsonl_path}")
    print(f"Output directory: {output_dir}")
    
    pairs_processed = 0
    errors = 0
    
    try:
        with open(jsonl_path, 'r', encoding='utf-8') as file:
            for line_num, line in enumerate(file, 1):
                try:
                    # Parse JSON line
                    data = json.loads(line.strip())
                    
                    # Extract required fields
                    pair_id = data.get('pair_id')
                    program_1_code = data.get('program_1_code')
                    program_2_code = data.get('program_2_code')
                    
                    # Validate required fields
                    if pair_id is None:
                        print(f"Warning: Line {line_num} missing pair_id, skipping...")
                        continue
                    
                    if program_1_code is None or program_2_code is None:
                        print(f"Warning: Line {line_num} missing program code, skipping...")
                        continue
                    
                    # Create directory for this pair
                    pair_dir = output_dir / str(pair_id)
                    pair_dir.mkdir(parents=True, exist_ok=True)
                    
                    # Write program1.cu
                    program1_path = pair_dir / "program1.cu"
                    with open(program1_path, 'w', encoding='utf-8') as f:
                        f.write(program_1_code)
                    
                    # Write program2.cu  
                    program2_path = pair_dir / "program2.cu"
                    with open(program2_path, 'w', encoding='utf-8') as f:
                        f.write(program_2_code)
                    
                    pairs_processed += 1
                    
                    if pairs_processed % 50 == 0:
                        print(f"Processed {pairs_processed} pairs...")
                    
                except json.JSONDecodeError as e:
                    print(f"Error parsing JSON on line {line_num}: {e}")
                    errors += 1
                    continue
                except Exception as e:
                    print(f"Error processing line {line_num}: {e}")
                    errors += 1
                    continue
    
    except Exception as e:
        print(f"Error reading file: {e}")
        return False
    
    print(f"\nCompleted!")
    print(f"Pairs processed: {pairs_processed}")
    print(f"Errors: {errors}")
    print(f"Output directory: {output_dir}")
    
    return True


def main():
    """Main function to handle command line arguments."""
    if len(sys.argv) < 2:
        print("Usage: python extract_pairs.py <train.jsonl> [output_dir]")
        print("Example: python extract_pairs.py train.jsonl")
        print("Example: python extract_pairs.py train.jsonl /path/to/output")
        sys.exit(1)
    
    jsonl_file = sys.argv[1]
    output_dir = sys.argv[2] if len(sys.argv) > 2 else None
    
    success = extract_pairs(jsonl_file, output_dir)
    sys.exit(0 if success else 1)


if __name__ == "__main__":
    main()
