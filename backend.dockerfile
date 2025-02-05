FROM node:alpine

ARG SEARXNG_API_URL
ENV SEARXNG_API_URL={$SEARXNG_API_URL}

WORKDIR /home/searchgpt

COPY backend /home/searchgpt/backend

COPY tsconfig.json /home/searchgpt/

COPY .env /home/searchgpt/

COPY package.json /home/searchgpt/

COPY package-lock.json /home/searchgpt/

RUN npm install

RUN npm run build

CMD ["npm", "start"]
