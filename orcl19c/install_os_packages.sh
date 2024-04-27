#!/bin/bash

echo "******************************************************************************"
echo "Install OS Packages." `date`
echo "******************************************************************************"
echo "nameserver 192.168.1.10" >> /etc/resolv.conf

yum install -y yum-utils zip unzip

yum install -y oracle-database-preinstall-19c


echo "******************************************************************************"
echo "Firewall." `date`
echo "******************************************************************************"
systemctl stop firewalld
systemctl disable firewalld


echo "******************************************************************************"
echo "SELinux." `date`
echo "******************************************************************************"
sed -i -e "s|SELINUX=enabled|SELINUX=permissive|g" /etc/selinux/config
