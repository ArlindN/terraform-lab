module "my-ecommerce-app" {
    source = "./modules/app-servers"

    instance_type = "t3.medium"

}