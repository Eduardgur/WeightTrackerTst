FROM node:latest

RUN apt update -y && apt-get update -y

COPY . APP/

WORKDIR App/


CMD ["node", "bootstrap.js"]
