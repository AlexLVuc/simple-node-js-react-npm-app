FROM node:6-alpine

RUN apt-get update && \
	apt-get install --reinstall -y ca-certificates && \
	update-ca-certificates && \
	curl -sL https://deb.nodesource.com/setup_4.x | bash

RUN npm config set registry http://registry.npmjs.org/ && \
	npm config set strict-ssl false && \
	npm config set maxSockets 8 && \
	npm install --unsafe-perm --allow-root --ignore-scripts -d 



# ...

