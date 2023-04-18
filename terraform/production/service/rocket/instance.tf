/*
    인스턴스 네이밍 규칙
    ec2_{app_name}
*/

resource "aws_instance" "ec2_rocket" {
    ami = var.AMI_ROCKET
    instance_type = "t2.micro"

    # 서브넷 ID
    subnet_id = local.subnet_rocket.id

    # 보안 그룹
    security_groups = [aws_security_group.allow_http.id, aws_security_group.allow_tls.id]
}
