FROM node:15-alpine

WORKDIR weighttracker/

COPY . .

RUN npm install

EXPOSE 8080

CMD npm run initdb && node bootstrap.js