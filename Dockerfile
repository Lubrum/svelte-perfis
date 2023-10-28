# Stage 1: Build the app
FROM node:20.9.0-alpine as builder

WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm ci --only=production

# Copy the app code
COPY . .

# Install Rollup as a development dependency
RUN npm install --save-dev rollup

# Build the app
RUN npm run build

# Stage 2: Serve the app using a lightweight base image
FROM node:20.9.0-alpine

WORKDIR /app

# Copy built app from previous stage
COPY --from=builder /app/public ./public
COPY --from=builder /app/package.json ./package.json
COPY --from=builder /app/package-lock.json ./package-lock.json

# Install only production dependencies
RUN npm ci --only=production

# Set the command to start the app
CMD ["npm", "run", "start", "--", "--port", "5000", "--host", "0.0.0.0"]