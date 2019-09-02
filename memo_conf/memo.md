certbot certonly --webroot \
-w /usr/share/nginx/html/ \
-d www.example.com \
-m example@example.com \
--agree-tos -n


ls -a /etc/letsencrypt/live/www.tabiya.me/
.  ..  README  cert.pem  chain.pem  fullchain.pem  privkey.pem
