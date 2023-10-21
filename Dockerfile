FROM node:18.16.0-alpine3.17
RUN mkdir -p /opt/app
FROM node:18.16.0-alpine3.17
RUN apk update && apk add curl
WORKDIR /opt/app
COPY src/package.json src/package-lock.json.
RUN npm install
COPY src/ .
EXPOSE 3000
CMD [ "npm", "start"]
