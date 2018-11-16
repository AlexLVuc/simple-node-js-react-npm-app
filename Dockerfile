# Node Alpine Image
FROM node:6-alpine

# Get certificates
# RUN apk update && apk add --reinstall -y ca-certificates && update-ca-certificates && curl -sL https://deb.nodesource.com/setup_4.x | bash
# Deal with NPM issues, configurations
RUN npm config set registry http://registry.npmjs.org/
RUN npm config set strict-ssl false 
RUN npm config set maxSockets 8 
RUN npm install --unsafe-perm --allow-root --ignore-scripts -d 
# ...

