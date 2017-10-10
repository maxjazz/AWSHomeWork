#!/bin/bash

ANSIBLEPLAYBOOK="/usr/local/bin/ansible-playbook"


install_ansible()
{
  if [ ! -f $ANSIBLEPLAYBOOK ]; then
    pip install ansible
  fi
}

configure_ansible()
{
  if [ ! -d "/etc/ansible" ]; then
    mkdir /etc/ansible
  fi
  echo "localhost ansible_connection=local" >> /etc/ansible/hosts

}


start_ansible()
{
  $ANSIBLEPLAYBOOK -v /home/ec2-user/configs/ansible/nginx.yml --connection=local
}



install_ansible
configure_ansible
start_ansible