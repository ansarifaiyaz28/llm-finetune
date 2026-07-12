import os

import torch
from transformers import AutoModelForCausalLM, AutoTokenizer

MODEL_DIR="/home/user/..."
model_path = MODEL_DIR

tokenizer = AutoTokenizer.from_pretrained(
    model_path,
    local_files_only=True,
)

model = AutoModelForCausalLM.from_pretrained(
    model_path,
    torch_dtype=torch.bfloat16,
    local_files_only=True,
)




device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
model = model.to(device)

print("Model loaded from:", model_path)
print("Device:", next(model.parameters()).device)
print("Model Architecture\n", model)