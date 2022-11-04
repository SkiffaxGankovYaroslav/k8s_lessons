#!/bin/bash
#nano install_kubetools.sh
#sudo chmod 755 install_kubetools.sh
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl

#enable autofill to kube* commands
echo 'source <(kubectl completion bash)' >>~/.bashrc

#example to join node
#kubeadm join --token bchagt.ijz9ssu3obpbyiab --discovery-token-ca-cert-hash sha256:75db835dd03edd306c2d993c03ca2c964dd69385267d4012951c608151d4xxxx
