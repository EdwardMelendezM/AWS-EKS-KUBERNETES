# AWS EKS
## Include
- Terraform
- Ingress
- TLS
- IAM User
- Autoscaling

## Aws helps
- Setup config aws
```
  aws configure
```

- Update Aws Eks kubeconfig
```
  aws eks update-kubeconfig \
  --region us-east-2 \
  --name staging-demo
```

- Verify kubectl
```
  kubectl auth can-i "*" "*"
  (yes)
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