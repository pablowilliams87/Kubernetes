#!/bin/bash

kubectl port-forward es-cluster-0 9200:9200 --namespace=kube-logging

curl http://localhost:9200/_cluster/state?pretty

