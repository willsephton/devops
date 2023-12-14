FROM certbot/certbot:v2.4.0

RUN apk add --no-cache jq

WORKDIR /devops

COPY start-certbot.sh certbot-certonly.sh certbot-delete.sh certbot-force-renew.sh ./
RUN chmod +x start-certbot.sh certbot-certonly.sh certbot-delete.sh certbot-force-renew.sh

ENTRYPOINT []
CMD ["/devops/start-certbot.sh"]
