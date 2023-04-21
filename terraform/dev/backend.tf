/*
  @floodnut 2023.04.22 최초 작성
  @floodnut 2023.04.22 수정
*/

resource "aws_s3_bucket" "terraform-state" {
  bucket = "terraform-state-init-cloud"

  tags = {
    Name = "Terraform state"
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-state-init-cloud"
    key    = "terraform.tfstate"
    region = "ap-northeast-2"
  }
}
