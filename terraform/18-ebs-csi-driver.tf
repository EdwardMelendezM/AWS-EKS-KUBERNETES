data "aws_iam_policy_document" "ebs_csi_driver" {
  statement {
    effect = "Allow"

    principals {
      type = "Service"
      identifiers = ["pods.eks.amazonaws.com"]
    }

    actions = [
      "sts:AssumeRole",
      "sts:TagSession"
    ]
  }
}

resource "aws_iam_role" "ebs_csi_driver" {
  name = "${aws_eks_cluster.eks.name}-ebs-csi-driver"
  assume_role_policy = data.aws_iam_policy_document.ebs_csi_driver.json
}

resource "aws_iam_role_policy_attachment" "ebs_csi_driver" {
  policy_arn = "arn:aws:iam::aws:service-role/AmazonEBSCSIDriverPolicy"
  role = aws_iam_role.ebs_csi_driver.name
}

# Optional: If you want to encrypt the EBS drives
resource "aws_iam_policy" "ebs_csi_driver_encryption" {
  name = "${aws_eks_cluster.eks.name}-ebs-csi-driver-encryption"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "kms:Decrypt",
          "kms:GenerateDataKeyWithoutPlaintext",
          "kms:CreateGrant",
        ],
        Resource = "*",
      },
    ]
  })
}

# Optional: If you want to encrypt the EBS drives