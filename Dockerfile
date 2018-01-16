FROM node:9.3
COPY .ssh /home/node/.ssh
RUN chown node:node -R /home/node
RUN chmod 700 /home/node/.ssh
USER node
WORKDIR /home/node
RUN mkdir -p repository
ENV REPOSITORY_LOCAL_PATH=$(pwd)/repository

COPY package*.json ./
COPY . .

RUN npm install 

# CMD [ "npm", "start" ]
ENTRYPOINT ["/usr/src/app/run"]