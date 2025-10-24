# Use Node.js image
FROM registry.access.redhat.com/ubi8/nodejs-18

# Set working directory
WORKDIR /opt/app-root/src

# Copy application source code
COPY . .

# Install dependencies
RUN npm install

# Expose application port
EXPOSE 8080

# Start the app
CMD ["npm", "start"]


