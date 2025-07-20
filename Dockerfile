# Use a slim, multi-architecture-compatible base image
FROM python:3.8-slim

# Set working directory
WORKDIR /code

# Install build tools (optional, useful for native dependencies)
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY src/ .

# Run the app
CMD ["python", "./main.py"]
