#!/bin/bash
# Installation of Pushgate + Prometheus + Grafana. This entire script is designed to run on CentOS or Red Hat OS's.


# Install Pushgate 
wget https://github.com/prometheus/pushgateway/releases/download/v0.8.0/pushgateway-0.8.0.linux-amd64.tar.gz

tar xvzf pushgateway-0.8.0.linux-amd64.tar.gz 
cd pushgateway-0.8.0.linux-amd64/ 
./pushgateway &

# Pushgate is installed and is now visible on port 9091

# Install Prometheus. Will be available on port 9090
cd ../
wget https://github.com/prometheus/prometheus/releases/download/v2.9.2/prometheus-2.9.2.linux-amd64.tar.gz
tar xvzf prometheus-2.9.2.linux-amd64.tar.gz 
wget https://raw.githubusercontent.com/mathurin186/AWS-Fun/main/prometheus.yml 	# Download the custom config file for Prometheus 
rm prometheus-2.9.2.linux-amd64/prometheus.yml			     	# Remove the original config file and replace with the custom	
cp prometheus.yml prometheus-2.9.2.linux-amd64/ 
cd prometheus-2.9.2.linux-amd64/

./prometheus --config.file=prometheus.yml &				# Run Prometheus in the background 

# Install Grafana Will be available on port 3000
cd ../
wget https://dl.grafana.com/oss/release/grafana-7.4.0-1.x86_64.rpm
sudo yum install grafana-7.4.0-1.x86_64.rpm -y
sudo systemctl start grafana-server

sudo yum update -y

# Log in with username / password of admin:admin
# Change to a more secure password
