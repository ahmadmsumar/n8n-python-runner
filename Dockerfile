# Start with a Python-based image instead of an n8n-based one
FROM python:3.11-slim

# Install Node.js (required to run n8n)
RUN apt-get update && apt-get install -y \
    curl \
    && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && npm install -g n8n@latest \
    && rm -rf /var/lib/apt/lists/*

# Set up n8n environment variables
ENV N8N_PYTHON_INTERPRETER=/usr/local/bin/python3
ENV N8N_BLOCK_INTERNAL_TASK_RUNNER=false

# Expose the n8n port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
