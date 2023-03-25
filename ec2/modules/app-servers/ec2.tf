variable "instance_type"{
  default = "t3.micro"
}

locals {
  name          = "arlind-instance"
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = "${local.name}-web"
  }
}

resource "aws_instance" "api" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    Name = "${local.name}-api"
  }
}