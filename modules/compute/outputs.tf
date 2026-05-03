output "alb_dns_name" {
  description = "DNS name of the application load balancer"
  value       = aws_lb.app.dns_name
}

output "asg_name" {
  description = "Name of the auto scaling group"
  value       = aws_autoscaling_group.app.name
}

output "target_group_arn" {
  description = "ARN of the ALB target group"
  value       = aws_lb_target_group.app.arn
}

output "alb_arn" {
  description = "ARN of the application load balancer"
  value       = aws_lb.app.arn
}

output "app_security_group_id" {
  description = "Security group ID of the app instances"
  value       = aws_security_group.app.id
}

output "alb_security_group_id" {
  description = "Security group ID of the ALB"
  value       = aws_security_group.alb.id
}

output "launch_template_id" {
  description = "ID of the launch template"
  value       = aws_launch_template.app.id
}