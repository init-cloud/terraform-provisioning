locals {
  vpc_init_cloud_1 = module.vpc.vpc_init_cloud_1
}

locals {
  subnet_git_oauth = module.vpc.subnet_apps
}

variable "GIT_OAUTH" {
  type    = string
  default = "git_oauth"
}