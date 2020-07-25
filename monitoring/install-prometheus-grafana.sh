#!/bin/bash

kubectl apply -f namespace.yaml
kubectl get ns

kubectl apply -f prometheus-pv.yaml
kubectl get pv

helm repo update
helm install stable/prometheus \
    --namespace monitoring \
    --name prometheus

helm install -f grafana-values.yml stable/grafana \
	--name grafana \
	--namespace monitoring

kubectl get pods -n monitoring
kubectl apply -f grafana-ext.yml -n monitoring

