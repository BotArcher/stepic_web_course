#!/bin/bash

git config user.name "Nikita"
git config user.email "spionop@yandex.ru"
mv  /home/box/test1 /home/box/web
unlink /etc/nginx/sites-enabled/default
ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test.conf
ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
/etc/init.d/nginx restart
echo "Complete!"
