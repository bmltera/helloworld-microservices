FROM node:20
RUN corepack enable
COPY package.json package-lock.json index.js ./
RUN npm install
EXPOSE 3001
ENV NODE_ENV=production
CMD ["node", "index.js"]