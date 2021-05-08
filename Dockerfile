FROM node:slim

WORKDIR app/

COPY . .

RUN npm install

EXPOSE 8080

ENTRYPOINT [ "npm" ]
CMD ["start", "bootstrap.js"]
