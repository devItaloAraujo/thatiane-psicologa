# Use Node.js 18 LTS as base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package.json package-lock.json* ./

# Install dependencies
RUN npm install --production

# Copy all application files
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the server
CMD ["npm", "start"]
