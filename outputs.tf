output "aws_iam_users" {
  value = data.aws_iam_users.users
}

# Output user information
output "users_info" {
  value = {
    for user in data.aws_iam_user.individual_user :
    user.user_name => {
      arn     = user.arn
      user_id = user.user_id
      path    = user.path
    }
  }
  description = "Detailed information for all IAM users"
}
