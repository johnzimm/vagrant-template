#!/bin/bash

if [ ! -f /etc/yum.repos.d/epel.repo ]; then
  sudo service iptables stop
  sudo chkconfig iptables off
  sudo yum install -y epel-release
fi
