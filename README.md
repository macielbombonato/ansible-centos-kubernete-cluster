# Ansible Kubernete Cluster - CentOS

Esta é uma coleção de receitas ansible para montar um ambiente kubernetes em CentOS.

Os scripts foram copiados do   [artigo](https://www.digitalocean.com/community/tutorials/como-criar-um-cluster-kubernetes-1-10-usando-kubeadm-no-centos-7-pt).

Após isso, foram feitos alguns ajustes a cada erro encontrado no processo até o sistema ficar operacional.

## Requisitos:

1. Instale o ansible em sua máquina
2. Crie as máquias CentOS
3. Ajuste o arquivo hosts para ficar adequado ao seu ambiente
4. Após criar as chaves SSH (```ssh-keygen```) em todas as máquinas, execute em seu computador o seguinte comando para cada uma das máquinas que constam no arquivo **hosts**:

```
ssh-copy-id root@your_host_ip
```

## Como usar

Execute o script **run-playbook.sh**

```
./run-playbook.sh
```
