FROM node:latest

# Set the working directory in the container to /app
WORKDIR /app
# Copy package.json and package-lock.json first to leverage Docker cache
COPY package*.json ./
# Copy the rest of the application code 
COPY . .

RUN npm install
RUN npm run build

EXPOSE 3000
CMD ["npm", "start"]