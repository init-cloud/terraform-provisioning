module "service_app_gateway" {
  source  = "./service/app_gateway"
  depends_on = [module.default_vpc]

  # vpc_id = module.my-vpc.my_vpc_id

  vpc_id = data.terraform_remote_state.dev_remote.outputs.my_vpc_id
}

module "service_git_auth" {
  source  = "./service/git_oauth"
  depends_on = [module.default_vpc]

  # vpc_id = module.my-vpc.my_vpc_id

  vpc_id = data.terraform_remote_state.dev_remote.outputs.my_vpc_id
}

module "service_rocket" {
  source  = "./service/rocket"
  depends_on = [module.default_vpc]

  # vpc_id = module.my-vpc.my_vpc_id
  # db_address = module.my-db.db_address
  # db_port = module.my-db.db_port
  vpc_id = data.terraform_remote_state.dev_remote.outputs.my_vpc_id
#   db_address = data.terraform_remote_state.dev_remote.outputs.db_address
#   db_port = data.terraform_remote_state.dev_remote.outputs.db_port
}