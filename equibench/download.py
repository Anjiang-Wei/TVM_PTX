import logging
from pathlib import Path
from datasets import load_dataset
import argparse
from huggingface_hub import HfApi

def download_equibench_datasets(data_path: Path):
    """Download EquiBench datasets from HuggingFace and save to local directory."""
    
    # Create output directory
    data_path.mkdir(parents=True, exist_ok=True)
    
    # HuggingFace dataset repository
    dataset_repo = "anjiangwei/EquiBench-Datasets"
    
    logging.info(f"Downloading EquiBench datasets from {dataset_repo}")
    
    try:
        # Get available configurations
        api = HfApi()
        dataset_info = api.dataset_info(dataset_repo)
        
        # Load the dataset (this will download all configurations)
        dataset = load_dataset(dataset_repo, "TVM")
        
        # Save each split to the data directory
        for split_name, split_data in dataset.items():
            output_file = data_path / f"{split_name}.jsonl"
            logging.info(f"Saving {split_name} split to {output_file}")
            split_data.to_json(output_file, orient="records", lines=True)
            
        logging.info(f"Successfully downloaded and saved EquiBench datasets to {data_path}")
        
    except Exception as e:
        logging.error(f"Error downloading datasets: {e}")
        raise

def main():
    parser = argparse.ArgumentParser(description="Download EquiBench datasets from HuggingFace")
    parser.add_argument("--data_path", required=False, default=".", type=Path, help="Directory to save the downloaded datasets")
    parser.add_argument("--log_level", type=str, default="INFO", 
                       choices=["DEBUG", "INFO", "WARNING", "ERROR"],
                       help="Set logging level")
    
    args = parser.parse_args()
    
    # Setup logging
    logging.basicConfig(
        level=getattr(logging, args.log_level),
        format='%(asctime)s - %(levelname)s - %(message)s'
    )
    
    download_equibench_datasets(args.data_path)

if __name__ == "__main__":
    main()
