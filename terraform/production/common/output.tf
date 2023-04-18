output "aws_sg_allow_http" {
    description = "Allow Ingress Http(80), Allow Egress."
    value = aws_security_group.aws_sg_allow_http.id
}

output "aws_sg_allow_tls" {
    description = "Allow Ingress TLS(443), Allow Egress."
    value = aws_security_group.aws_sg_allow_tls.id
}