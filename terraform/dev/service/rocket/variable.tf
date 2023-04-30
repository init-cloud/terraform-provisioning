/*
  @floodnut 2023.04.22 최초 작성
  @floodnut 2023.04.22 수정
*/

locals {
  vpc_init_cloud_1 = module.vpc.vpc_init_cloud_1
}

locals {
  subnet_rocket = module.vpc.subnet_apps
}

variable "ROCKET" {
  type    = string
  default = "rocket"
}