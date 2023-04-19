locals {
  vpc_init_cloud_1 = module.vpc.vpc_init_cloud_1
}

locals {
  subnet_app_gateway = module.vpc.subnet_app_gateway
}

variable "APP_GATEWAY" {
  type    = string
  default = "app_gateway"
}