FROM node:22.17.1

EXPOSE 80

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENTRYPOINT ["npm", "run"]
CMD ["start"]