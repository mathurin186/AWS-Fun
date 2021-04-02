#! /bin/bash/

# All Instructions are for the Master Node

# This isn't a good idea, but it makes this faster
sudo su

# Installation of Kubernetes on Ubuntu
apt-get update && apt-get upgrade -y

# Installation of Docker 
apt-get install -y docker.io

systemctl start docker
systemctl enable docker 

touch /etc/apt/sources.list.d/kubernetes.list
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -

exit
sudo apt-get upgrade && apt-get upgrade

sudo apt-get install -y kubeadm=1.19.1-00 kubelet=1.19.1-00 kubectl=1.19.1-00
sudo apt-mark hold kubelet kubeadm kubectl

# Install the Calico networking system
wget https://docs.projectcalico.org/manifests/calico.yaml

# ip addr show

# vim /etc/hosts
# Add <ip_address> k8smaster to the hosts file

# vim kubeadm-config.yaml and copy content here
"""
apiVersion: kubeadm.k8s.io/v1beta2
kind: ClusterConfiguration
kubernetesVersion: 1.19.1
controlPlaneEndpoint: "k8smaster:6443" #<-- Use the node alias not the IP
networking:
  podSubnet: 192.168.0.0/16
"""

sudo kubeadm init --config=kubeadm-config.yaml --upload-certs | tee kubeadm-init.out


mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
# less .kube/config   <-- Verify that config file has content in yaml format

# Apply the Network plugin
kubectl apply -f calico.yaml

sudo kubeadm config print init-defaults
