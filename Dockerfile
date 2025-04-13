# Step 1: Use official Node image as base
FROM node:18

# Step 2: Create app directory
WORKDIR /usr/src/app

# Step 3: Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy the rest of the app code
COPY . .

# Step 5: Expose port and run the app
EXPOSE 3000
CMD ["node", "app.js"]
