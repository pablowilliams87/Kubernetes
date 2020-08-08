#!/bin/bash

kubectl apply -f namespace.yaml
kubectl get ns

kubectl apply -f prometheus-pv.yaml
kubectl get pv

helm repo update
helm install prometheus stable/prometheus \
    --namespace monitoring

helm install grafana -f grafana-values.yml stable/grafana \
	--namespace monitoring

kubectl get pods -n monitoring
kubectl apply -f grafana-ext.yml -n monitoring

## To delete helm package
## helm delete prometheus --purge
