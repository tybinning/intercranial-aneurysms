# Use PyTorch official image with CUDA for GPU training 
FROM pytorch/pytorch:2.3.1-cuda11.7-cudnn8-runtime-py3.11
# Set working directory 
WORKDIR /app 
# Copy requirements first for better caching 
COPY requirements.txt . 
# Install Python dependencies 
RUN pip install --no-cache-dir -r requirements.txt 
# Copy the rest of your project code 
COPY . . 
# Default command: run training script 
CMD ["python"]