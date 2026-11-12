FROM node:20-alpine
WORKDIR /app

# спочатку лише маніфести — кеш шарів і менше сміття
COPY package*.json ./
RUN npm ci --omit=dev && npm cache clean --force

COPY app.js ./

# не запускаємо від root
USER node
EXPOSE 3000
CMD ["node", "app.js"]