FROM n8nio/n8n:latest

# Install FFmpeg inside the image
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    rm -rf /var/lib/apt/lists/*

# Default command
CMD ["n8n", "start"]
