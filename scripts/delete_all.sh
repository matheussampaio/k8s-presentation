#! /bin/bash

set -x

kubectl delete deployment k8s-presentation 2>/dev/null
kubectl delete deployment k8s-presentation-blue 2>/dev/null
kubectl delete deployment k8s-presentation-green 2>/dev/null

kubectl delete configmap k8s-presentation 2>/dev/null
kubectl delete configmap k8s-presentation-envs 2>/dev/null
kubectl delete configmap k8s-presentation-blue 2>/dev/null
kubectl delete configmap k8s-presentation-green 2>/dev/null

kubectl delete service k8s-presentation 2>/dev/null
kubectl delete service k8s-presentation-blue 2>/dev/null
kubectl delete service k8s-presentation-green 2>/dev/null
kubectl delete service k8s-presentation-any-color 2>/dev/null
kubectl delete service k8s-presentation-stable-color 2>/dev/null
