#!/bin/bash
sudo mysql -u root \
    -e "update user set authentication_string=password(''), plugin='mysql_native_password' where user='root';" \
    mysql

sudo service mysql restart