#!/bin/bash

# Script to download LLaMA 2-7B Chat model from Hugging Face

# Configuration
MODEL_NAME="meta-llama/Llama-2-7b-chat-hf"
TARGET_DIR="./models/llama2-7b-chat"

# Make sure target directory exists
mkdir -p $TARGET_DIR

# Prompt for Hugging Face token if not set
if [ -z "$HF_TOKEN" ]; then
  read -p "Enter your Hugging Face token: " HF_TOKEN
fi

# Install huggingface-cli if not already available
pip install -q huggingface_hub

# Use huggingface-cli to login and download model
huggingface-cli login --token $HF_TOKEN

# Download the model using snapshot_download
python3 - <<EOF
from huggingface_hub import snapshot_download
snapshot_download(repo_id="$MODEL_NAME", local_dir="$TARGET_DIR", token="$HF_TOKEN")
EOF

echo "✅ LLaMA 2 model downloaded to $TARGET_DIR"

