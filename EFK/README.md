# Install EFK

## Deploy Elasticsearch
```
kubectl create ns -f ns-kube-logging.yaml

kubectl create -n kube-logging -f elasticsearch_pv.yaml

kubectl create -n kube-logging -f elasticsearch_svc.yaml

kubectl create -n kube-logging -f elasticsearch_statefulset.yaml
```

## Deploy Kibana
```
kubectl create -n kube-logging -f kibana.yaml

kubectl create -n kube-logging -f kibana-nodeport.yaml
```

## Deploy Fluentd
```
kubectl create -n kube-logging -f fluentd.yaml
```
