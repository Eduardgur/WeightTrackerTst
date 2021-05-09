FROM node:alpin-15

WORKDIR app/

COPY . .

RUN npm install

EXPOSE 8080

CMD npm run initdb && node bootstrap.js