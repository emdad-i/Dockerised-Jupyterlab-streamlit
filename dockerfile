# Using 3.13-slim for the best balance of speed, size, and compatibility
FROM python:3.13-slim

WORKDIR /app

# Install minimal dependencies for the OS
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Optimize Python for containers
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

RUN pip install --no-cache-dir jupyterlab streamlit

COPY . .

EXPOSE 8888 8501

CMD ["sh", "-c", "jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root & streamlit run app.py --server.port=8501 --server.address=0.0.0.0"]
