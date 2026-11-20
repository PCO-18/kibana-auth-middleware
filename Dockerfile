FROM node:26-alpine

WORKDIR /app
COPY src/ .
RUN npm ci --omit=dev

EXPOSE 3000
CMD ["node", "index.js"]
