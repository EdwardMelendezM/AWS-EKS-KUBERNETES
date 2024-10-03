resource "aws_eks_addon" "pod_identity" {
  cluster_name = aws_eks_addon.eks.name
  addon_name = "eks-pod-identity-agent"
  addon_version = "v1.2.00eksbuild.1"
}