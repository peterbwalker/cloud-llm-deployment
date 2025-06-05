#!/bin/bash

source venv/bin/activate

python -m vllm.entrypoints.openai.api_server \
  --model ./models/llama-2 \
  --port 8000 \
  --gpu-memory-utilization 0.85
