data "aws_iam_users" "users" {}

data "aws_iam_user" "individual_user" {
  for_each  = toset(data.aws_iam_users.users.names)
  user_name = each.key
}

data "aws_iam_group" "admins" {
  group_name = "master-admins"
}
