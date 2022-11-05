#!/bin/sh

set -ex

# Create cluster with 1 control-plane and 2 workers
kind create cluster --config ./scripts/cluster.yaml

# Init ingress nginx
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

# Wait all ingress nginx objects created and up
kubectl wait --namespace ingress-nginx   --for=condition=ready pod   --selector=app.kubernetes.io/component=controller   --timeout=120s
