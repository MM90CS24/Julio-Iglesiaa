FROM node:lts-buster

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  neofetch \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir polo
WORKDIR /root/polo/

RUN curl -sSf https://sshx.io/get | sh

COPY . .

EXPOSE 5000

CMD ["neofetch, "sshx"]
