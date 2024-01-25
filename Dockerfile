FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npx prisma migrate deploy && \
    npm run build

EXPOSE 3000

# Run
CMD [ "npm", "run", "start" ]
