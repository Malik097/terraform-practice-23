resource "aws_instance" "malik" {
  ami = "ami-053b0d53c279acc90"

  instance_type = "t3.micro"
  key_name      = "terraform29aug"

  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_s3_bucket" "malik" {
  bucket = "malik-28-1997"
}
resource "aws_iam_user" "user-1997" {
  name = "user-1997"
}

resource "aws_iam_access_key" "access_key" {
  user = aws_iam_user.user-1997.name
}
output "iam_access_key" {
  value = aws_iam_access_key.access_key.id
}

output "iam_secret_key" {
  value = aws_iam_access_key.access_key.secret
  sensitive = true
}
