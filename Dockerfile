# Use Debian-based n8n image
FROM n8nio/n8n:latest-debian

# Switch to root to install ffmpeg
USER root

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

# Switch back to node user (default for n8n)
USER node

# Start n8n
CMD ["n8n", "start"]
