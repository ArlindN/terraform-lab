module "my-ecommerce-app" {
    source = "./modules/app-servers"

    instance_type = var.instance_type

}