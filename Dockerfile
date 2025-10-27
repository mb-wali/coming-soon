FROM python:3.8-slim

ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1 \
    PIP_NO_CACHE_DIR=1

# Create a non-root user and group (same UID/GID as K8s will use)
RUN groupadd --gid 1001 comingsoon && useradd --uid 1001 --gid 1001 -m comingsoon

# Set working directory
WORKDIR /app

# Install minimal dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
 && rm -rf /var/lib/apt/lists/*

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code and fix permissions
COPY src/ .
RUN chown -R 1001:1001 /app

USER comingsoon

# Expose app port (for clarity; not strictly required)
EXPOSE 8080

# Define default command
CMD ["python", "main.py"]
