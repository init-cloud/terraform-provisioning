data "terraform_remote_state" "remote_vpc" {
  backend = "s3"
  config = {
    bucket = "terraform-state-init-cloud"
    key    = "/production/terraform.tfstate"
    region = "ap-northeast-2"
  }
}