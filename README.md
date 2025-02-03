# k8s-ansible
Kubernetes ansible playbook

このプロジェクトはKubernetesをansible使ってサクッと立てるのを目的としています。

## Result
```sh
ubuntu@code:~/projects/k8s-ansible$ kubectl get node
NAME       STATUS   ROLES           AGE     VERSION
master     Ready    control-plane   2m32s   v1.32.1
worker     Ready    <none>          75s     v1.32.1
worker-1   Ready    <none>          74s     v1.32.1
worker-2   Ready    <none>          74s     v1.32.1
```