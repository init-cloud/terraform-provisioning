/*
    인스턴스 네이밍 규칙
    ec2_{app_name}
*/

resource "aws_instance" "ec2_auth" {
    ami = "${lookup(var.AWS_AMIS, var.AWS_REGION)}"
    instance_type = "t2.micro"

    # 가용 영역
    availability_zone = "${lookup(var.AWS_REGION_AZ, var.AWS_REGION)}"

    # 서브넷 ID
    subnet_id = aws_subnet.subnet_vpc1.id

    # 보안 그룹
    security_groups = [aws_security_group.allow_http.id, aws_security_group.allow_tls.id]
}

resource "aws_instance" "ec2_rocket" {
    ami = "${lookup(var.AWS_AMIS, var.AWS_REGION)}"
    instance_type = "t2.micro"

    # 가용 영역
    availability_zone = "${lookup(var.AWS_REGION_AZ, var.AWS_REGION)}"

    # 서브넷 ID
    subnet_id = aws_subnet.subnet_vpc1.id

    # 보안 그룹
    security_groups = [aws_security_group.allow_http.id, aws_security_group.allow_tls.id]
}
