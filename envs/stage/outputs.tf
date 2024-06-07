output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}

output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "rds_instance_id" {
  value = module.rds.db_instance_id
}

output "s3_bucket_id" {
  value = module.s3.bucket_id
}
