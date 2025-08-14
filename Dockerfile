# Use a slim, multi-architecture-compatible base image
FROM python:3.8-slim

# Create a non-root user and group
RUN groupadd -r comingsoon && useradd -r -g comingsoon comingsoon

# Set working directory and ensure it’s writable by the new user
WORKDIR /code
RUN chown comingsoon:comingsoon /code

# Install build tools (optional, useful for native dependencies)
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY src/ .

# Make sure all files are owned by the non-root user
RUN chown -R comingsoon:comingsoon /code

# Switch to non-root user
USER comingsoon

# Run the app
CMD ["python", "./main.py"]
