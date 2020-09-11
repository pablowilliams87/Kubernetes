#!/bin/bash
wget https://github.com/vmware-tanzu/velero/releases/download/v1.4.2/velero-v1.4.2-linux-amd64.tar.gz
tar xzvf velero-v1.4.2-linux-amd64.tar.gz 
sudo mv velero-v1.4.2-linux-amd64/velero /usr/local/bin/.
rm -rf velero*
