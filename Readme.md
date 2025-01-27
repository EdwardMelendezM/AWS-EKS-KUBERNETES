# AWS EKS

- Scalability: Easily scale your containerized workloads horizontally or vertically.
- Managed Kubernetes: AWS handles the Kubernetes control plane, reducing operational overhead.
- Integration with AWS Services: Seamlessly integrates with services like IAM, VPC, CloudWatch, and ALB for networking, security, and monitoring.
- High Availability: Multi-AZ support ensures resilience and uptime for your applications.
- Cost Efficiency: Pay only for the resources you use, with no upfront costs.
- Portability: Easily run and migrate Kubernetes workloads across on-premises and cloud environments.
- Security: Leverage AWS's strong security features, including IAM roles for service accounts and network policies.

## Include
- Terraform
- Ingress
- TLS
- IAM User
- Autoscaling

## Aws helps
- Access Aws Eks 
```
  aws eks update-kubeconfig \
  --region us-east-2 \
  --name staging-demo
```

- Access Aws Eks like developer
```
  aws eks update-kubeconfig \
  --region us-east-2 \
  --name staging-demo \
  --profile developer
```

- Setup config aws
```
  aws configure
```

- Configure profile of role in kubernetes
```
  aws configure --profile developer
```

## Terraform helps
- Init
```
  terraform init
```

- Apply
```
  terraform apply
```

## Kubernetes helps
- Verify admin privileges
```
  kubectl auth can-i "*" "*"
  (yes)
```

- Verify the local kubernetes config uses the developer
```
  kubectl config view --minify
```

- Verify auth can get pods
```
  kubectl auth can-i get pods
```

- Get nodes
```
  kubectl get nodes
```

- Apply
```
  kubectl apply 3-example
```

- Watch
```
  ~ watch -t kubectl get pods -n 3-example
```
