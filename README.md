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

## Run
ansibleを先にインストールしてください。

### 1. `hosts.yml`の編集
Todoにかかれているとおりにしたがってください

### 2. 環境の構築
以下のコマンドを打つと自動的にk8sに適する環境を構築してくれます。
```sh
ansible-playbook -i hosts.yml setup_k8s_env.yml
```

### 3. マスターノードの構築
以下のコマンドを打つと自動的に構築してくれます。
```sh
ansible-playbook -i hosts.yml setup_k8s_master.yml
```

### 4. ワーカーノードの構築
以下のコマンドを打つと自動的に構築してくれます。
```sh
ansible-playbook -i hosts.yml setup_k8s_worker.yml
```
