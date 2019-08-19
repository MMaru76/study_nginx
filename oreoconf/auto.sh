sed -i /etc/sysconfig/certbot \
-e "/^PRE_HOOK/ s/\"\"/\"--pre-hook 'systemctl stop nginx'\"/" \
-e "/^POST_HOOK/ s/\"\"/\"--post-hook 'systemctl restart nginx'\"/" \
-e "/^RENEW_HOOK/ s/\"\"/\"--renew-hook 'systemctl restart nginx'\"/"


# certbot certonly --webroot \
-w /usr/share/nginx/html/test1 \
-d www.example.com \
-m example@example.com \
--agree-tos -n