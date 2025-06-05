#!/bin/bash

MODEL_DIR="./models/llama-2"
if [ ! -d "$MODEL_DIR" ]; then
    echo "❌ Model directory does not exist. Please run download_llama2.sh first."
    exit 1
fi

# (Optional) Add any conversion or preparation commands
echo "✅ Model is ready at $MODEL_DIR"


