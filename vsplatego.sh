#!/bin/bash

service mysqld start || service mysql start && mysql -u root -ptoor -e 'create database wordpress;';
wget -O /var/www/html/wordpress-4.8.tar.gz http://test-1251457471.cosgz.myqcloud.com/wordpress-4.8.tar.gz && tar -zxf /var/www/html/wordpress-4.8.tar.gz -C /var/www/html;
rm -rf /var/www/html/wordpress-4.8.tar.gz;
chmod -R 777 /var/www/html;
sed -i "s/dc_eximconfig_configtype='local'/dc_eximconfig_configtype='internet'/" /etc/exim4/update-exim4.conf.conf;
#sed -i "s/dc_eximconfig_configtype='local'/dc_eximconfig_configtype='smarthost'/" /etc/exim4/update-exim4.conf.conf;
#sed -i "s/dc_smarthost=''/dc_smarthost='smtp.exmail.qq.com'/" /etc/exim4/update-exim4.conf.conf;
#echo "smtp.exmail.qq.com:demo@vulnspy.com:password" >> /etc/exim4/passwd.client;
/etc/init.d/exim4 restart;
