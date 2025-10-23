# Use official Node.js LTS image
FROM node:18-alpine

WORKDIR /app

# Copy package and tsconfig first
COPY package.json tsconfig.json ./

# Install all dependencies (including devDeps for build)
RUN npm install

# Copy and build source
COPY src ./src
RUN npm run build

# Set environment and expose desired port
ENV PORT=80
EXPOSE 80

CMD ["npm", "start"]
