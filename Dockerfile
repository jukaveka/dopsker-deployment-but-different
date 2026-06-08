FROM node:22

WORKDIR /myapp

COPY . .

RUN npm install 

ARG WEATHER_API_KEY

ENV VITE_WEATHER_API_KEY=$WEATHER_API_KEY

RUN npm run build && npm install -g serve

EXPOSE 3000

CMD ["serve", "dist"]
