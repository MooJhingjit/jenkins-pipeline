FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

CMD ["npm", "run", "build"]


# docker run -d --rm --name pipeline-app-build -v $(pwd):/app -v /app/node_modules pipeline-app
