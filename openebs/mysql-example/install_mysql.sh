#!/bin/bash
helm install mysql-openebs --set persistence.storageClass=openebs-cstor-disk stable/mysql
