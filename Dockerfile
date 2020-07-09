FROM node:12

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run setup-custom-fields; exit 0
RUN npm run setup-asana-hooks; exit 0
RUN npm run setup-github-hooks; exit 0
EXPOSE 8000
CMD [ "npm", "run", "dev" ]
