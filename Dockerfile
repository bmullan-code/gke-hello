FROM node:8
COPY .git/short_ref version.txt
WORKDIR /usr/src/app
COPY package.json .

RUN npm install
COPY . .
EXPOSE 808
CMD ["node","index.js"]

