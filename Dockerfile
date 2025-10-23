# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install deps
COPY package.json tsconfig.json ./
RUN npm install

# Copy source and build
COPY src ./src
RUN npm run build

# Set environment and expose port
ENV PORT=80
EXPOSE 80

# Start the app
CMD ["npm", "start"]
