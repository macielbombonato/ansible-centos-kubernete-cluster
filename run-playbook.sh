
echo " ===> Initial Configuration"
ansible-playbook -i hosts.yml initial.yml

echo " ===> Install kubernetes dependencies"
ansible-playbook -i hosts.yml kube-dependencies.yml

echo " ===> Configuring master node"
ansible-playbook -i hosts.yml master.yml

echo " ===> Configuring workers nodes"
ansible-playbook -i hosts.yml workers.yml

echo " ===> Install Helm"
ansible-playbook -i hosts.yml helm.yml

echo " ===> Installing and configuring some aditional features"
ansible-playbook -i hosts.yml pods.yml
