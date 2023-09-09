resource "aws_iam_user" "user-1997" {
  name = var.iam_user_name
}
resource "aws_iam_access_key" "access_key" {
  count = var.create_access_key ? 1 : 0
  user  = aws_iam_user.user-1997.name
}
