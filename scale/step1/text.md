> Deployments allow you to manage mutiple pods

https://kubernetes.io/docs/concepts/workloads/controllers/deployment/

Create a deployment called `my-deploy` of image `nginx` with three replicas
<br>
<details><summary>Solution</summary>
<br>

`k create deployment my-deploy --image=nginx --replicas=3`

