FROM n8nio/n8n:latest

USER root
# Install Python 3 and build tools
RUN apk add --update --no-cache python3 py3-pip build-base python3-dev

# Optional: If you need specific libraries like pandas or requests
# RUN python3 -m pip install --break-system-packages pandas requests

USER node
