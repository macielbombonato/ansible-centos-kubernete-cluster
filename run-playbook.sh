
echo " ===> Initial Configuration"
ansible-playbook -i hosts initial.yml

echo " ===> Install kubernetes dependencies"
ansible-playbook -i hosts kube-dependencies.yml

echo " ===> Configuring master node"
ansible-playbook -i hosts master.yml

echo " ===> Configuring workers nodes"
ansible-playbook -i hosts workers.yml
