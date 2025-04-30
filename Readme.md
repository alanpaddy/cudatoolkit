# ⚡ CUDA Toolkit – Personal GPU Programming Reference

A lightweight, flat-structured library of reusable CUDA experiments and GPU utilities. Designed for quick prototyping, benchmarking, and performance tuning.

## 📦 Files Overview

| File                   | Description                             |
|------------------------|-----------------------------------------|
| `kernel_basics.cu`     | Thread/block indexing basics            |
| `shared_memory_example.cu` | Optimized shared memory kernel     |
| `warp_shuffle.cu`      | Warp shuffle intrinsics for reduction   |
| `matrix_mul.cu`        | Tiled matrix multiplication kernel      |
| `vector_add.cu`        | Classic CUDA vector addition            |
| `onnx_cuda_inference.py` | ONNX runtime inference on GPU        |
| `benchmark_cuda_copy.py` | Copy speed from CPU to GPU           |
| `device_info.py`       | Query GPU properties (PyTorch-based)    |

## 🚀 Build & Run

```bash
nvcc kernel_basics.cu -o kernel_basics
./kernel_basics
