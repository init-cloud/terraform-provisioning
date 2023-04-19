/*
    인스턴스 네이밍 규칙
    ec2_{app_name}
*/

resource "aws_instance" "ec2_git_oauth" {
  ami           = var.AMI_GIT_OAUTH
  instance_type = "t2.micro"

  # 서브넷 ID
  subnet_id = local.subnet_git_oauth.id

  # 보안 그룹
  security_groups = [aws_security_group.aws_sg_allow_http_from_app_gateway.id, aws_security_group.aws_sg_allow_tls_from_app_gateway.id]
}