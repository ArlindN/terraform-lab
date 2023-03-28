resource "aws_iam_user" "this" {
  name = "arlindnurshaba"

  tags = {
    Infrastructure = "appstellar-training"
  }
}

data "aws_iam_policy_document" "this" {
  statement {
    effect    = "Allow"
    actions = [
     "eks:ListNodegroups",
     "eks:DescribeFargateProfile",
     "eks:ListTagsForResource",
     "eks:ListAddons",
     "eks:DescribeAddon",
     "eks:ListFargateProfiles",
     "eks:DescribeNodegroup",
     "eks:DescribeIdentityProviderConfig",
     "eks:ListUpdates",
     "eks:DescribeUpdate",
     "eks:AccessKubernetesApi",
     "eks:DescribeCluster",
     "eks:ListClusters",
     "eks:DescribeAddonVersions",
     "eks:ListIdentityProviderConfigs"
]
    resources = ["*"]
  }
    statement {
    effect    = "Allow"
    actions = ["iam:ChangePassword"]
    resources = [aws_iam_user.this.arn]
    }
}

resource "aws_iam_user_policy" "this" {
  name   = "arlindnurshaba-policy"
  user   = aws_iam_user.this.name
  policy = data.aws_iam_policy_document.this.json
}

resource "aws_iam_user_login_profile" "this" {
  user    = aws_iam_user.this.name
}

resource "aws_iam_access_key" "this" {
  user = aws_iam_user.this.name
}