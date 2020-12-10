FROM node:14.15-alpine3.10

WORKDIR /app

COPY package.json /app/package.json

COPY yarn.lock /app/yarn.lock

RUN yarn

COPY . /app
