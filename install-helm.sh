#!/bin/bash

curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > /tmp/get_helm.sh
chmod 700 /tmp/get_helm.sh
/tmp/get_helm.sh

helm init --wait
helm repo update

