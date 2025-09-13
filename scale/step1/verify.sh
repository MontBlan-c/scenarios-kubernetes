#!/bin/bash
kubectl get deploy my-deploy -o jsonpath='{.spec.replicas}' 2>/dev/null | grep -qx 3 \
  && kubectl get deploy my-deploy -o jsonpath='{.spec.template.spec.containers[0].image}' \
     | grep -qx nginx \
  && exit 1

