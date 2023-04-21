resource "aws_key_pair" "bastion_keypair" {
  key_name   = "bastion_keypair"
  public_key = fileexists(var.PATH_TO_PUBLIC_KEY) ? file(var.PATH_TO_PUBLIC_KEY) : var.DUMMY_SSH_PUB_KEY
  lifecycle {
    ignore_changes = [public_key]
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "bastion_keypair"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "bastion_keypair.pub"
}

variable "DUMMY_SSH_PUB_KEY" { }