#!/usr/bin/env bash

kubeadm config images pull
kubeadm reset -f
kubeadm init --pod-network-cidr 10.1.0.0/24 --service-cidr 10.2.0.0/24 --token 2o0p9r.lf06v8n79bhn2r3x

mkdir -p ~/.kube
cp /etc/kubernetes/admin.conf ~/.kube/config
