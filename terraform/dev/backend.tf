terraform {
  backend "s3" {
    bucket = "terraform-state-init-cloud"
    key    = "terraform.tfstate"
    region = "ap-northeast-2"
  }
}