
export USER=arquitetura

echo " ===> Initial Configuration"
ansible-playbook -i hosts initial.yml

echo " ===> Install kubernetes dependencies"
ansible-playbook -i hosts kube-dependencies.yml

echo " ===> Configuring master node"
ansible-playbook -i hosts master.yml

echo " ===> Configuring workers nodes"
ansible-playbook -i hosts workers.yml

echo " ===> Install Helm"
ansible-playbook -i hosts helm.yml

echo " ===> Installing and configuring some aditional features"
ansible-playbook -i hosts pods.yml
