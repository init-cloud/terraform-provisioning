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