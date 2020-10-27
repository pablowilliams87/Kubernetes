#!/bin/bash

kubectl apply -f namespace.yaml
kubectl get ns

kubectl apply -f prometheus-pv.yaml
kubectl get pv

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install prometheus prometheus-community/prometheus
    --namespace monitoring

helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
helm install grafana/grafana -f grafana-values.yml stable/grafana \
	--namespace monitoring

kubectl get pods -n monitoring
kubectl apply -f grafana-ext.yml -n monitoring

## To delete helm package
## helm delete prometheus --purge
