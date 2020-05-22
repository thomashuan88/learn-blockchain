FROM node:12

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY ./app /usr/src/app

COPY ./app/package*.json ./
RUN rm -rf ./package-lock.json

RUN npm install --no-optional && npm cache clean --force
RUN npm install express --save
RUN npm i body-parser --save
RUN npm install nodemon --save-dev
RUN useradd -md /bin/bash local

EXPOSE 3000

CMD [ "npm", "start" ]