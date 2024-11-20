# 1. EKS Cluster Configuration
This defines the AWS EKS cluster and the worker nodes.

apiVersion: eksctl.io/v1alpha5
kind: ClusterConfig

metadata:
  name: eks-nodejs-app-cluster
  region: eu-central-1

nodeGroups:
  - name: node-group-1
    instanceType: t3.medium
    desiredCapacity: 3
    minSize: 2
    maxSize: 4
    ssh:
      allow: true

Create the cluster using:

bash
Copy code
eksctl create cluster -f cluster-config.yaml
