# variable "environment" {
#     default = "dev"
# }
# du9opFRLI09stw.atlasv1.btCwsBOp0RnI3y6DKOnxvofoW7A4I8l5grEdW94VIywRLb89DzokFVCwj8Zlvq50NvY

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "ArlindN"

    workspaces {
      name = "my-first-workspace"
    }
  }
}