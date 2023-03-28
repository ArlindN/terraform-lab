output "password" {
    value = aws_iam_user_login_profile.this.password
}

output "access_key" {
    value = aws_iam_access_key.this.id
}

output "secret_key" {
    value = aws_iam_access_key.this.secret
    sensitive = true
}