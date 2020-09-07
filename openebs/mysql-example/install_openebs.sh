#!/bin/bash
sudo apt-get -y install open-iscsi
sudo systemctl enable --now iscsid

kubectl create ns openebs
helm repo add openebs https://openebs.github.io/charts
helm repo update
helm install --namespace openebs openebs openebs/openebs
