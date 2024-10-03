# AWS EKS
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