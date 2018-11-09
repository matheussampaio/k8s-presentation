#! /bin/bash

set -ex

kubectl get svc k8s-presentation-stable-color -o json | jq '.spec.selector.color'
