# Kubernetes Presentation Demo

This is a small demo application to demonstrate Kubernetes.


## `step-0-no-manifest`
Initial branch, no manifests here.


## `step-1-basic-manifest`
Simple manifest with `Deployment` and `Service`.

New concepts: 
 - `kubectl apply -f file.yaml`
 - `Deployment`
 - `Service`
 - `environment variables`
 - `readinessProbe`
 - `livenessProbe`
 - `replicas`
 - `selector`


## `step-2-add-config-map`
Adds a `configMap` to inject a HTML file.

New concepts:
 - `ConfigMap`
 - `volumes`
 - `volumeMounts`


 ## `step-3-update-config-map`
Update `ConfigMap`.


## `step-4-add-env-configmap`
Creates a new `ConfigMap` to demonstrate environment variables injection.

New concepts:
 - `envFrom`


 ## `step-5-add-blue-green`
 Uses a `blue-green` strategy to rollout updates. Three Services (blue, green, both). Two Deployments (green and blue). Two ConfigMap (blue and green).

 New concepts:
 - `blue-green` strategy.
