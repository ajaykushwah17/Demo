resource "aws_iam_policy" "security_group_permissions" {
  name        = "SecurityGroupPermissionsPolicy"
  description = "Allows using a specific security group for EC2 instances."

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "ec2:RunInstances",
        Effect = "Allow",
        Resource = "*",
        Condition = {
          StringEquals = {
            "ec2:SecurityGroupIds": "sg-0a01701f24b9228e0"  # Replace with your security group ID
          }
        }
      }
    ]
  })
}
