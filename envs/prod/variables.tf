variable "region" {
  description = "The AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "subnets" {
  description = "List of subnet CIDR blocks"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "allocated_storage" {
  description = "The size of the database (Gb)"
  type        = number
}

variable "storage_type" {
  description = "The storage type of the database"
  type        = string
}

variable "engine" {
  description = "The database engine to use"
  type        = string
}

variable "engine_version" {
  description = "The engine version to use"
  type        = string
}

variable "instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
}

variable "db_identifier" {
  description = "The identifier of the database"
  type        = string
}

variable "username" {
  description = "The username for the database"
  type        = string
}

variable "password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "parameter_group_name" {
  description = "The DB parameter group to associate with"
  type        = string
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}
