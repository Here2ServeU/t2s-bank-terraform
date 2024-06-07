provider "aws" {
  region = var.region
}

module "vpc" {
  source = "../../modules/vpc"

  cidr_block         = var.cidr_block
  subnets            = var.subnets
  availability_zones = var.availability_zones
}

module "ec2" {
  source = "../../modules/ec2"

  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.subnet_ids[0]
}

module "rds" {
  source = "../../modules/rds"

  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  db_identifier        = var.db_identifier
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
}


module "s3" {
  source = "../../modules/s3"

  bucket_name = var.bucket_name
}

