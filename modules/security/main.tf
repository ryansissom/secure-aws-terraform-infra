# IAM Roles
resource "aws_iam_role" "ec2" {
  name = "${var.env}-ec2-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })

  tags = {
    Name = "${var.env}-ec2-role"
  }
}

# IAM Attachments
resource "aws_iam_role_policy_attachment" "ssm" {
  role       = aws_iam_role.ec2.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_role_policy_attachment" "cloudwatch" {
  role       = aws_iam_role.ec2.name
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}

# EC2 Instance Profiles
resource "aws_iam_instance_profile" "ec2" {
  name = "${var.env}-ec2-profile"
  role = aws_iam_role.ec2.name

  tags = {
    Name = "${var.env}-ec2-profile"
  }
}