#! /bin/bash

set -e

SERVICE_NAME="k8s-presentation-stable-color"
CURRENT_STABLE_COLOR=$(kubectl get svc $SERVICE_NAME -o json | jq '.spec.selector.color' | sed 's/\"//g')

if [ $CURRENT_STABLE_COLOR == "green" ]; then
  echo "Current color is '$CURRENT_STABLE_COLOR'. Flipping to 'blue'..."

  kubectl get svc $SERVICE_NAME -o yaml | sed 's/color: green/color: blue/' | kubectl replace -f -
else
  echo "Current color is '$CURRENT_STABLE_COLOR'. Flipping to 'green'..."

  kubectl get svc $SERVICE_NAME -o yaml | sed 's/color: blue/color: green/' | kubectl replace -f -
fi
