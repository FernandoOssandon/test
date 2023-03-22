# create a dockerfile for the application
FROM node:16.19.1
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
COPY package*.json ./
RUN npm install
# Bundle app source
COPY . .
EXPOSE $PORT

ENV NODE_ENV=production
ENV HOST=0.0.0.0
RUN npm run build

CMD [ "npm","run", "start" ]
