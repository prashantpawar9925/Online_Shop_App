#Getting base image for nodeJS
FROM node:18

# making a working dir for putting code and req. files
WORKDIR /app

# copy everything form the source(Host) to the destination (container)
copy . .

# Install packages
RUN npm install

# Expose the port
EXPOSE 5173

# serve the application 
CMD ["npm","run","dev"]
