#!/usr/bin/env bash 
 
 apt-get update 
 apt-get upgrade -y 
 apt-get install apache2 -y
 
 rm /etc/apache2/sites-available/000-default.conf
 rm /etc/apache2/apache2.conf

 ln -s /vagrant/000-default.conf /etc/apache2/sites-available
 ln -s /vagrant/apache2.conf /etc/apache2

 service apache2 restart  

 chmod +755 /vagrant/www
 chmod +755 /vagrant