4. Kubernetes Deployment Manifest

apiVersion: apps/v1
kind: Deployment
metadata:
  name: nodejs-app
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nodejs-app
  template:
    metadata:
      labels:
        app: nodejs-app
    spec:
      containers:
      - name: nodejs-app
        image: <your-dockerhub-username>/nodejs-eks-app:latest
        ports:
        - containerPort: 3000
