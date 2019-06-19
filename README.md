# Ansible Kubernete Cluster - CentOS

Esta é uma coleção de receitas ansible para montar um ambiente kubernetes em CentOS.

Os scripts foram inicialmente copiados do [artigo](https://www.digitalocean.com/community/tutorials/como-criar-um-cluster-kubernetes-1-10-usando-kubeadm-no-centos-7-pt).

Após isso, foram feitos alguns ajustes a cada erro encontrado no processo até o sistema ficar operacional e foram incluídos componentes adicionais.

## Objetivo:

Ao final de todo o processo de instalação, a ideia é que tenhamos o seguinte ambiente montado:

- Computadores:
1. Master
2. Worker 1
3. Worker 2

> Recomendo configurar as máquinas virtuais com pelo menos 2GB de RAM e 2 CPUs. Com isso o sistema deve ficar operacional.  
> 20GB de disco pode ajudar muito durante os testes devido ao download das imagens para montar os pods.  

- Software:
1. Docker
2. Kubernetes
3. Dashboard do Kubernetes
4. Ingress  

## Requisitos:

1. Instale o ansible em sua máquina
2. Crie as máquias CentOS
3. Ajuste o arquivo hosts para ficar adequado ao seu ambiente
4. Após criar as chaves SSH (```ssh-keygen```) em todas as máquinas, execute em seu computador o seguinte comando para cada uma das máquinas que constam no arquivo **hosts**:

```
ssh-copy-id root@your_host_ip
```

## Antes de executar

Atualize o arquivo **hosts.yml** atualizando endereços de IP e variáveis de ambiente listadas no arquivo.

## Como usar

Execute o script **run-playbook.sh**

```
./run-playbook.sh
```
