## IAM groups
resource "aws_iam_group" "master-admins" {
  name = "master-admins"
  path = "/master/admins/"
}

resource "aws_iam_group" "master-devs" {
  name = "master-devs"
  path = "/master/devs/"
}

resource "aws_iam_group" "master-ops" {
  name = "master-ops"
  path = "/master/ops/"
}

resource "aws_iam_group" "master-specials" {
  name = "master-specials"
  path = "/master/specials/"
}

## IAM Users
resource "aws_iam_user" "master-admin-1" {
  name = "master-admin-1"
  tags = {
    "track" = "master"
  }
}

resource "aws_iam_user" "master-dev-1" {
  name = "master-dev-1"
  tags = {
    "track" = "master"
  }
}

resource "aws_iam_user" "master-op-1" {
  name = "master-op-1"
  tags = {
    "track" = "master"
  }
}

resource "aws_iam_user" "master-special-1" {
  name = "master-special-1"
  tags = {
    "track" = "master"
  }
}

