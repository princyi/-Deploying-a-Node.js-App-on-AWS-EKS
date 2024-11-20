5. Kubernetes Service Manifest

apiVersion: v1
kind: Service
metadata:
  name: nodejs-service
spec:
  type: LoadBalancer
  ports:
  - port: 80
    targetPort: 3000
  selector:
    app: nodejs-app

Apply the manifests using:

bash
Copy code
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
