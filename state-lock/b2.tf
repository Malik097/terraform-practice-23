resource "aws_instance" "malik" {

  ami = "ami-053b0d53c279acc90"

  instance_type = "t3.medium"
  key_name      = "terraform29aug"

  tags = {
    Name = "EC2-MALIK"
  }

}