
FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./
COPY start.sh /start.sh
EXPOSE 8000
CMD [ "/start.sh" ]
