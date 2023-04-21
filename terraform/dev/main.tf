/*
  @floodnut 2023.04.22 최초 작성
  @floodnut 2023.04.22 수정
*/

module "service_app_gateway" {
  source = "./service/app_gateway"

}

module "service_git_auth" {
  source = "./service/git_oauth"

}

module "service_rocket" {
  source = "./service/rocket"
}