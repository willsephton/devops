FROM nginx:1.23-alpine

RUN apk add --no-cache openssl jq

WORKDIR /devops

COPY config-nginx.sh start-nginx.sh ./
RUN chmod +x config-nginx.sh start-nginx.sh

EXPOSE 80

CMD ["/devops/start-nginx.sh"]