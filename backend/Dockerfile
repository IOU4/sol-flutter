FROM node:lts-alpine

WORKDIR /app
COPY ./db.json  .

RUN npm init -y
RUN npm install -g json-server

CMD [ "json-server", "--host", "0.0.0.0", "db.json" ]
