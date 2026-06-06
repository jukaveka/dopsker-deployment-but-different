FROM node:22

WORKDIR /myapp

COPY . .

RUN npm install 

RUN npm run build && npm install -g serve

EXPOSE 3000

CMD ["serve", "dist"]
