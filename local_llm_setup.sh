# 1. Install Python environment and vllm
# (Assuming you are on a Linux system with Python 3.8+ and pip available)

# Create and activate a virtual environment
python3 -m venv vllm_env
source vllm_env/bin/activate

# Upgrade pip and install vllm
pip install vllm

# 2. Run vllm serve with the specified model and API key
# This will start the vllm server in the background (or you can run in a separate terminal)
# --api-key requires vllm >=0.4.0
vllm serve NousResearch/Meta-Llama-3-8B-Instruct --dtype auto --api-key token-abc123 --port 9000 --tensor-parallel-size 2
