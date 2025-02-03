ansible-playbook -i hosts.yml setup_k8s_env.yml
ansible-playbook -i hosts.yml setup_k8s_master.yml

cp outputs/master_1/etc/kubernetes/admin.conf ~/.kube/config
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash

helm repo add cilium https://helm.cilium.io/

sleep 10

helm install cilium cilium/cilium \
    --namespace kube-system
