FROM node:bookworm-slim
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "./"]

RUN pnpm i

COPY . .

CMD [ "pnpm", "start"]
