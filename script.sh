#!/bin/bash
sudo yum -y install wget
wget https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
gpg --quiet --with-fingerprint RPM-GPG-KEY-elrepo.org
wget http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm
sudo rpm -i elrepo-release-7.0-2.el7.elrepo.noarch.rpm
sudo yum -y --enablerepo=elrepo-kernel install kernel-lt
sudo grub2-set-default 0
uname -msr