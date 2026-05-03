module "network" {
  source = "../../modules/network"

  vpc_cidr = var.vpc_cidr
  azs      = var.azs
  env      = var.env
}

module "security" {
  source = "../../modules/security"

  env = var.env
}

module "compute" {
  source = "../../modules/compute"

  env                  = var.env
  vpc_id               = module.network.vpc_id
  public_subnet_ids    = module.network.public_subnet_ids
  private_subnet_ids   = module.network.private_subnet_ids
  instance_profile_name = module.security.ec2_instance_profile_name
  ami_id               = var.ami_id
  instance_type        = var.instance_type
  asg_min              = var.asg_min
  asg_desired          = var.asg_desired
  asg_max              = var.asg_max
}