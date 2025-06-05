#!/bin/bash
# This script starts the vLLM server with a specified model

MODEL_PATH="meta-llama/Llama-2-7b-chat-hf"
PORT=8000

python3 -m vllm.entrypoints.openai.api_server \
  --model $MODEL_PATH \
  --port $PORT
