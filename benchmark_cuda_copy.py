import torch
import time

a = torch.rand(10000000).pin_memory()
start = time.time()
b = a.cuda(non_blocking=True)
torch.cuda.synchronize()
print(f"Copy time: {time.time() - start:.4f}s")
