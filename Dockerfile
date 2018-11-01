FROM node:8
WORKDIR /usr/src/app
COPY package.json .
COPY ../../../.git/short_ref version.txt
RUN npm install
COPY . .
EXPOSE 808
CMD ["node","index.js"]

