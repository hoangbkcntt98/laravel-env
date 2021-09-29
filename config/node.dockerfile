FROM node:14-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
COPY . .
EXPOSE 8900
CMD ["tail", "-f", "/dev/null"]
CMD [ "node", "server.js" ]