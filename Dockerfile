FROM node:14-alpine
RUN apk add --no-cache bash docker
WORKDIR /workdir
ENV PATH="/workdir:/workdir/node_modules/.bin:${PATH}"
RUN npm install bbrun && \
    chmod +x /workdir/node_modules/.bin/bbrun
WORKDIR /app
CMD ["/workdir/node_modules/.bin/bbrun"]