FROM node:6-alpine

EXPOSE 3000

RUN apk add --update tini

RUN mkdir -p usr/src/app

WORKDIR /usr/src/app

COPY package.json package.json

RUN npm install && npm cache clean --force

# COPY all files from current directory in host to workdir in container.
COPY . .

CMD ["tini", "--", "node", "bin/www"]
