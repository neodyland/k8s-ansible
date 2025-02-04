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

### 2. Kubernetes環境の構築
以下のコマンドを実行して、Kubernetesに必要なパッケージや設定を各サーバーにインストールします。
```bash
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

## 補足事項

* 各playbookの実行後、`kubectl get nodes` コマンドでノードの状態を確認できます。
* 必要に応じて、`hosts.yml` の内容を調整してください。
* この手順では、基本的なKubernetesクラスタの構築を行います。より詳細な設定やカスタマイズが必要な場合は、各playbookの内容を修正してください。
