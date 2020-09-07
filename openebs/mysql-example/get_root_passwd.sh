#!/bin/bash
MYSQL_ROOT_PASSWORD=$(kubectl get secret --namespace default mysql-openebs -o jsonpath="{.data.mysql-root-password}" | base64 --decode; echo)
