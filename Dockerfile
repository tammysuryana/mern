FROM node:15.4.0-alpine

WORKDIR /usr/app 
ENV NODE_ENV=production
EXPOSE 5600

#instaling dependecies 
COPY package.json .
RUN npm install 

COPY . . 
CMD  [ "npm","start"]