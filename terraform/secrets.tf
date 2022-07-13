
resource "aws_secretsmanager_secret" "coredns_access" {
  name = "service-coredns-AWS_ACCESS_KEY_ID"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "coredns_access" {
  secret_id     = aws_secretsmanager_secret.coredns_access.id
  secret_string = aws_iam_access_key.coredns.id
}

resource "aws_secretsmanager_secret" "coredns_secret" {
  name = "service-coredns-AWS_SECRET_ACCESS_KEY"
  recovery_window_in_days = 0
}

resource "aws_secretsmanager_secret_version" "coredns_secret" {
  secret_id     = aws_secretsmanager_secret.coredns_secret.id
  secret_string = aws_iam_access_key.coredns.secret
}

resource "aws_secretsmanager_secret_policy" "coredns_secrets_access" {
  secret_arn = aws_secretsmanager_secret.coredns_access.arn

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "${aws_iam_user.coredns.arn}"
      },
      "Action": "secretsmanager:GetSecretValue",
      "Resource": "*"
    }
  ]
}
POLICY
}


resource "aws_secretsmanager_secret_policy" "coredns_secrets_secret" {
  secret_arn = aws_secretsmanager_secret.coredns_secret.arn

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "${aws_iam_user.coredns.arn}"
      },
      "Action": "secretsmanager:GetSecretValue",
      "Resource": "*"
    }
  ]
}
POLICY
}