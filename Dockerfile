#
# dockerized node server
#

FROM node:6.10.1

MAINTAINER Shiva Chandra Kumar K <ksck23@gmail.com>

RUN mkdir -p /tmp/app

WORKDIR /tmp/app

ADD . /tmp/app

RUN npm install

ENV PORT 8000

EXPOSE $PORT

CMD ["npm", "start"]
