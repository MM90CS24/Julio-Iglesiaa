FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN curl -sSf https://sshx.io/get | sh

COPY . .

EXPOSE 5000

CMD ["sshx"]
