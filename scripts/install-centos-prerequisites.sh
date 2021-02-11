#!/usr/bin/env bash

sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum -y groupinstall 'Development Tools'
sudo yum -y install file git perl gcc dkms make bzip2 ruby
sudo yum -y install kernel-headers kernel-devel
