FROM node:9.3
RUN apt-get -y update && apt-get -y upgrade
USER node
WORKDIR /home/node
COPY package*.json ./
COPY . .

RUN npm install 

# CMD [ "npm", "start" ]
ENTRYPOINT ["/usr/src/app/run"]
