FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir n8n-python-runner

EXPOSE 5679

CMD ["n8n-python"]
