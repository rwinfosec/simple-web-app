FROM alpine:3.7

RUN apk add --update nodejs nodejs-npm


RUN mkdir -p /opt/work/
WORKDIR /opt/work/
COPY . .
RUN npm install

ENTRYPOINT ["npm", "start"]