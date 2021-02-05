#!/bin/bash

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
cd prometheus-2.9.2.linux-amd64/

./prometheus --config.file=prometheus.yml

# Install Grafana Will be available on port 3000
cd ../
wget https://dl.grafana.com/oss/release/grafana-7.4.0-1.x86_64.rpm
sudo yum install grafana-7.4.0-1.x86_64.rpm
sudo systemctl start grafana-server

# Log in with username / password of admin:admin
# Change to a more secure password