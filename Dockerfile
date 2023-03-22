FROM node:16.3.0


WORKDIR /usr/src/app

COPY package*.json ./
RUN npm ci

COPY . .
EXPOSE $PORT

ENV NODE_ENV=production
ENV HOST=0.0.0.0

# PRISMA 
RUN npm install -g prisma
RUN prisma generate


RUN npm run build

CMD [ "npm", "run", "start" ]