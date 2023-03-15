FROM node:latest

ENV NODE_OPTIONS="--openssl-legacy-provider"

RUN apt update && apt -y upgrade

WORKDIR /app

RUN git clone https://github.com/LLK/scratch-gui --depth=1

WORKDIR /app/scratch-gui

RUN npm install

CMD ["npm", "start"]

EXPOSE 8601
