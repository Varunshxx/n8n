FROM n8nio/n8n:latest

# Install ffmpeg for Alpine
RUN apk add --no-cache ffmpeg

CMD ["n8n", "start"]
