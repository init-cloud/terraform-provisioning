module "global" {
    source = "./common"
}

module "vpc" {
    source = "../../vpc"
}