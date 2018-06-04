#!/bin/bash

service mysqld start || service mysqld start && mysql -u root -ptoor -e 'create database wordpress;';
tar -zxf /var/www/html/wordpress-4.8.tar.gz -C /var/www/html;
rm -rf /var/www/html/wordpress-4.8.tar.gz;
chmod -R 777 /var/www/html;
