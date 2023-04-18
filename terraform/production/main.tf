module "service_app_gateway" {
  source  = "./service/app_gateway"

}

module "service_git_auth" {
  source  = "./service/git_oauth"

}

module "service_rocket" {
  source  = "./service/rocket"
}