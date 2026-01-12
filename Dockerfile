FROM n8nio/n8n:latest

USER root

# Update and install Python using apt-get (Debian/Ubuntu)
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    python3-full \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set the environment variable so n8n knows where Python is
ENV N8N_PYTHON_INTERPRETER=/usr/bin/python3

USER node
