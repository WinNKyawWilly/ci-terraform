# output "aws_iam_users" {
#   value = data.aws_iam_users.users
# }

# # Output user information
# output "users_info" {
#   value = {
#     for user in data.aws_iam_user.individual_user :
#     user.user_name => {
#       arn     = user.arn
#       user_id = user.user_id
#       path    = user.path
#     }
#   }
#   description = "Detailed information for all IAM users"
# }

# Output track master IAM Users
output "master-track-iam-users" {
  value = [
    for user in data.aws_iam_user.individual_user :
    user.user_name if lookup(user.tags, "track", "") == "master"
  ]
}

# Output IAM group
output "aws_iam_group" {
  value = data.aws_iam_group.admins
}
