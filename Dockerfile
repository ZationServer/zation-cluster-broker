FROM node:8.9

MAINTAINER Zation

LABEL version="6.0.4"
LABEL description="Docker file for Zation Broker Server"

RUN mkdir -p /usr/src/
WORKDIR /usr/src/
COPY . /usr/src/

RUN npm install

RUN npm install pm2 -g

EXPOSE 8888

CMD ["npm", "run", "start:docker"]