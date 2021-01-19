cd /data
make
cp out/ /var/www/html
/usr/sbin/httpd -DFOREGROUND
