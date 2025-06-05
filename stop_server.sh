#!/bin/bash

# Kill the Python API server (assumes no other python3 processes running)
pkill -f "vllm.entrypoints.openai.api_server"
echo "🛑 LLM server stopped."
