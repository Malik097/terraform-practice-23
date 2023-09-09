# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-01c647eace872fc02" # Amazon2 Linux AMI ID
}

variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type        = number
  default     = 1
}
variable "ec2_instance_type" {
  description = "My instance type"
  type        = string
  default     = "t3.micro"


}
variable "bucket_name" {
  description = "MY S3 BUCKET"
  type        = string
  default     = "my-1997-bucket"

}
variable "iam_user_name" {
  description = "my iam user"
  type        = string
  default     = "user-1997"

}
variable "create_access_key" {
  description = "my access and secret key"
  type        = bool
  default     = true

}