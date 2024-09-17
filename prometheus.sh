#!/bin/bash

# Exponera Prometheus via Minikube

echo "Exponerar Prometheus via Minikube..."
minikube service prometheus-kube-prometheus-prometheus -n sportcenter

# 6. lösenord: prom-operator
# 7. Glöm inte att lägga till detta i grafana under url
# http://prometheus-kube-prometheus-prometheus:9090
# testa metric i visualisation i grafana
# välj apiserver_request_total