# Define Output Values
# Attribute Reference: EC2 Instance Public IP
output "ec2_instance_publicip" {
  description = "EC2 Instance Public IP"
  value       = aws_instance.Malik-ec2-05SEP23
}

# Argument Reference: EC2 Instance Private IP
output "ec2_instance_privateip" {
  description = "EC2 Instance Private IP"
  value       = aws_instance.Malik-ec2-05SEP23.*.private_ip
}
# Argument Reference: Security Groups associated to EC2 Instance
output "ec2_security_groups" {
  description = "List Security Groups associated with EC2 Instance"
  value       = aws_instance.Malik-ec2-05SEP23.*.security_groups
}



output "aws_iam_access_key" {
  description = "secret key"
  value       = aws_iam_access_key.access_key
  sensitive   = true


}