#!/bin/bash

echo " --> Adding Ansible repository"
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sleep 2

echo " --> Installing Ansible and Python"
sudo apt install -y ansible python3 python3-pip python3-jinja2
