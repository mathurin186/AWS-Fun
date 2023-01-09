#!/bin/bash

# Automate Kubernetes installation on a CentOS 
sudo yum update && sudo yum upgrade -y

sudo yum install -y docker
print "You have installed Docker!"

sudo modprobe overlay
sudo modprobe br_netfilter
