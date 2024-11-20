Steps to Execute
Create EKS Cluster
Run:

bash
Copy code
eksctl create cluster -f cluster-config.yaml
Containerize and Push the App
Replace <your-dockerhub-username> with your Docker Hub username:

bash
Copy code
docker build -t <your-dockerhub-username>/nodejs-eks-app .
docker push <your-dockerhub-username>/nodejs-eks-app
Deploy to EKS
Apply the Kubernetes manifests:

bash
Copy code
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
Access the App
Get the LoadBalancer URL:

bash
Copy code
kubectl get svc nodejs-service
Open the URL in your browser.

Automate with CI/CD
Push your code to GitHub, and the GitHub Actions pipeline will automatically deploy changes.
