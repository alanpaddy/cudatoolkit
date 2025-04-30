FROM nvidia/cuda:12.2.0-devel-ubuntu22.04

RUN apt update && apt install -y build-essential python3 python3-pip
RUN pip install torch onnxruntime-gpu numpy

WORKDIR /lab
COPY . /lab
CMD ["bash"]
