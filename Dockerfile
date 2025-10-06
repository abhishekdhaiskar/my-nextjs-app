# Use official Node.js 18 Alpine image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm ci

# Copy all app files
COPY . .

# Build the Next.js app
RUN npm run build

# Set environment variable
ENV NODE_ENV=production

# Expose port 3000
EXPOSE 3000

# Run as non-root user for security
USER node

# Start the app
CMD ["npm", "start"]
