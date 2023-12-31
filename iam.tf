data "aws_iam_policy_document" "node-role-access" {
  statement {
    effect = "Allow"
    actions = [
      "s3:GetObject",
    ]
    resources = ["${aws_s3_bucket.node-role-access.arn}/*"]
  }
	statement {
    effect = "Allow"
    actions = [
      "s3:ListBucket",
    ]
    resources = ["${aws_s3_bucket.node-role-access.arn}"]
	}
  statement {
    effect = "Allow"
    actions = [
			"s3:ListAllMyBuckets",
    ]
    resources = ["arn:aws:s3:::*"]
  }
}

resource "aws_iam_policy" "node-role-access" {
  name   = "node-role-access"
  policy = data.aws_iam_policy_document.node-role-access.json
}

data "aws_iam_policy_document" "irsa-access" {
  statement {
    effect = "Allow"
    actions = [
      "s3:GetObject",
    ]
    resources = ["${aws_s3_bucket.irsa-access.arn}/*"]
  }
	statement {
    effect = "Allow"
    actions = [
      "s3:ListBucket",
    ]
    resources = ["${aws_s3_bucket.irsa-access.arn}"]
	}
  statement {
    effect = "Allow"
    actions = [
			"s3:ListAllMyBuckets",
    ]
    resources = ["arn:aws:s3:::*"]
  }
}

resource "aws_iam_policy" "irsa-access" {
  name   = "irsa-access"
  policy = data.aws_iam_policy_document.irsa-access.json
}
