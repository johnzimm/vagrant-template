#!/bin/bash

RELEASEVER=`rpm -qa \*-release | grep -Ei "centos|redhat" | cut -d"-" -f3`
PUPPETSERVER='0.0.0.0'

case $RELEASEVER in
[6]*)
  sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm
  ;;
[7]*)
  sudo rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
  ;;
*)
  echo "Operating System Release $RELEASEVER not supported."
  echo "I quit."
  exit 1
  ;;
esac

sudo echo "$PUPPETSERVER    puppet" >> /etc/hosts

sudo yum install puppet-agent -y
#sudo /opt/puppetlabs/bin/puppet agent -t
