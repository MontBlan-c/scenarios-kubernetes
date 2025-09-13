#!/bin/bash
set -e

# Fail if the deployment is missing, wrong replica count, or wrong image
kubectl get deployment my-deploy >/dev/null 2>&1 &&
[ "$(kubectl get deployment my-deploy -o jsonpath='{.spec.replicas}')" = "3" ] &&
[ "$(kubectl get deployment my-deploy -o jsonpath='{.spec.template.spec.containers[0].image}')" = "nginx" ]

