FROM node:0.10

RUN mkdir -p /opt/aloe
WORKDIR /opt/aloe

COPY src/. /opt/aloe
RUN tar xzf aloe.tar.gz
WORKDIR /opt/aloe/bundle/programs/server
RUN [ "npm", "install", "-g", "node-gyp" ]
RUN [ "npm", "install" ]

ENV MONGO_URL=mongodb://mongo:27017
ENV ROOT_URL=http://website.org
ENV MAIL_URL=smtp://user:password@smtp.gmail.com:587/
ENV PORT 3000

WORKDIR /opt/aloe
RUN chmod +x start.sh
RUN [ "/opt/aloe/start.sh" ]
