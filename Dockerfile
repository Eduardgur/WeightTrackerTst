FROM node:15-alpine

WORKDIR weighttracker/

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD node bootstrap.js