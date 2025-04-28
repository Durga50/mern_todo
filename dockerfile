FROM node:23

WORKDIR /app
# Now copy the rest of the files
COPY . .


# Install dependencies
RUN npm install



EXPOSE 3000

CMD ["node", "app.js"]
