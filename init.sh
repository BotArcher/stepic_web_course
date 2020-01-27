#!/bin/bash

git config user.name "Nikita"
git config user.email "spionop@yandex.ru"
unlink /etc/nginx/sites-enabled/default
ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
/etc/init.d/nginx restart
echo "Complete!"
