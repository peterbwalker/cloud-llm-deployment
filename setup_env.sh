#!/bin/bash

# Update and install system packages
sudo apt update && sudo apt install -y git wget curl python3 python3-pip python3-venv

# Set up Python virtual environment
python3 -m venv venv
source venv/bin/activate

# Install Python packages
pip install --upgrade pip
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118
pip install vllm transformers accelerate

echo "✅ Environment setup complete."

