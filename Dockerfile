FROM node:slim

WORKDIR app/

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

RUN npm run initdb

CMD npm run initdb && node bootstrap.js
