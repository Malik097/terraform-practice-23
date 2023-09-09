# Create EC2 Instance
resource "aws_instance" "Malik-ec2-05SEP23" {
  ami                    = var.ec2_ami_id
  instance_type          = var.ec2_instance_type
  key_name               = "terraform29aug"
  count                  = var.ec2_instance_count
  user_data              = <<-EOF
     #!/bin/bash
    sudo yum update -y
    sudo yum install httpd -y
    sudo systemctl enable httpd
    sudo systemctl start httpd
    echo "<h1>Welcome all Hi MY NAME IS MALIK ZEESHAN ! AWS Infra created using Terraform in us-east-1 Region</h1>" > /var/www/html/index.html
  EOF 
  vpc_security_group_ids = [aws_security_group.vpc-ssh-1997.id, aws_security_group.vpc-web-28.id]
  tags = {
    "Name" = "Malik-ec2-05SEP23"
  }
}