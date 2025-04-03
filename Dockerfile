# Use lightweight Node.js Alpine image
FROM node:22-alpine

# Set working directory
WORKDIR /app

# Copy package.json first (for caching layers)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy remaining project files
COPY . .

# Expose the application port
EXPOSE 3000

# Run the application
CMD ["npm", "start"]
