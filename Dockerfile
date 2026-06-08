FROM node:22

WORKDIR /myapp

COPY . .

RUN npm install 

RUN --mount=type=secret,id=WEATHER_API_KEY \
    VITE_WEATHER_API_KEY=$(cat /run/secrets/WEATHER_API_KEY) \
    npm run build

RUN npm install -g serve

EXPOSE 3000

CMD ["serve", "dist"]
