#!/bin/bash
echo "" > /etc/apt/sources.list.d/webmin.list
echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list.d/webmin.list
echo "deb http://software.virtualmin.com/gpl/ubuntu/ virtualmin-universal main" >> /etc/apt/sources.list.d/webmin.list
wget http://www.webmin.com/jcameron-key.asc -O jcameron-key.asc
apt-key add jcameron-key.asc
wget http://software.virtualmin.com/lib/RPM-GPG-KEY-virtualmin -O RPM-GPG-KEY-virtualmin
apt-key add RPM-GPG-KEY-virtualmin
apt-get install software-properties-common
apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
add-apt-repository 'deb [arch=amd64,i386,ppc64el] http://ftp.yz.yamagata-u.ac.jp/pub/dbms/mariadb/repo/10.1/ubuntu xenial main'
apt-get update
apt-get -y install php7.0 php7.0-mysql php7.0-fpm php7.0-gd php7.0-xml nginx webmin-virtualmin-nginx mariadb-client php7.0-zip mariadb-server webmin webmin-virtual-server
wget https://github.com/Real-Gecko/virtualmin-nginx-fpm/blob/master/install/webmin-virtualmin-nginx-fpm_1.0.4_all.deb?raw=true -O webmin-virtualmin-nginx-fpm.deb
dpkg -i webmin-virtualmin-nginx-fpm.deb
