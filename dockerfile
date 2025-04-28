FROM node:23

WORKDIR /app

# Copy package.json first (best practice for cache)
COPY package.json .

# Install dependencies
RUN npm install

# Now copy the rest of the files
COPY . .

EXPOSE 3000

CMD ["node", "app.js"]
