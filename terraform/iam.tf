data "aws_iam_policy_document" "coredns" {
    statement {
        actions = [
            "route53:GetHostedZone",
            "route53:ListResourceRecordSets"
        ]
        effect = "Allow"
        resources = var.hosted_zones
    }

    statement {
        actions = [
            "route53:ListHostedZones",
            "route53:ListHostedZonesByName"
        ]
        effect = "Allow"
        resources = ["*"]
    }
}

resource "aws_iam_policy" "coredns" {
  name   = "policy-coredns-hosted_zones-read"
  path   = "/"
  policy = data.aws_iam_policy_document.coredns.json
}

resource "aws_iam_user" "coredns" {
  name = "service-coredns-onprem"
  path = "/service_accounts/"
}

resource "aws_iam_user_policy_attachment" "coredns" {
  user       = aws_iam_user.coredns.name
  policy_arn = aws_iam_policy.coredns.arn
}

resource "aws_iam_access_key" "coredns" {
    user = aws_iam_user.coredns.name
}