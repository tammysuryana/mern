FROM node:15.4.0-alpine

RUN apt-get update && add ca-certificates && update-ca-certificates

RUN mkdir /app 
ADD . /app 


WORKDIR /app

RUN npm update
CMD npm start

#WORKDIR /usr/app 
#ENV NODE_ENV=production
#EXPOSE 5600

#instaling dependecies 
#COPY package.json .
#RUN npm install 

#COPY . . 
#CMD  [ "npm","start"]