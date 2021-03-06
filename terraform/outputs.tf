output "iam_access_key" {
    value                   = aws_iam_access_key.coredns.id
}

output "aws_secretsmanager_secret_accesskey" {
    value                   = {
        name = aws_secretsmanager_secret.coredns_access.name
        arn  = aws_secretsmanager_secret.coredns_access.arn
    }
}

output "aws_secretsmanager_secret_secretkey" {
    value                   = {
        name = aws_secretsmanager_secret.coredns_secret.name
        arn  = aws_secretsmanager_secret.coredns_secret.arn
    }
}

output "iam_secret_key" {
    value                   = aws_iam_access_key.coredns.secret
    sensitive               = true
}

output "github_repository" {
    value                   = module.github_repository
}

output "aws_secretsmanager_secret_coredns_access" {
    value                   = aws_secretsmanager_secret.coredns_access.arn
}

output "aws_secretsmanager_secret_coredns_secret" {
    value                   = aws_secretsmanager_secret.coredns_secret.arn
}

resource "local_file" "aws_secretsmanager_arns" {
    content  = templatefile("${path.module}/templates/aws_secretmanager_arns.tftpl",
    {
        coredns_access = aws_secretsmanager_secret.coredns_access.arn,
        coredns_secret = aws_secretsmanager_secret.coredns_secret.arn
    })
    filename = "${path.module}/aws_secret_arns.yml"
}