module "ec2_instance" {
  source        = "git::https://github.com/Lal0555/modules-assignment.git//modules/ec2"
  ami_id        = var.ami_ids
  instance_type = var.ec2_instance_type
  instance_name = var.instance_name
}

module "s3" {
  source = "git::https://github.com/Lal0555/modules-assignment.git//modules/s3"
}

module "vpc" {
  source = "./modules/vpc"

}


module "subnet" {
  source      = "./modules/subnet"
  vpc_id      = module.vpc.vpc_id
  subnet_name = "my-subnet"
}




