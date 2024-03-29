variable "region" {
  description = "Name of the region in which VPC is created"
  type        = string
  default     = "ap-south-1a"
}

variable "project_name" {
  description = "Name of the project, this is used as tag to identify resources created"
  type        = string
  default     = "test-1"
}

variable "cidr_vpc" {
  description = "The IP address range of the VPC in CIDR notation. A prefix of /16 is recommended. Do not use a prefix higher than /27."
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "Availability zones where we want to create needed subnets"
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "subnet_public_cidr" {
  description = "public subnet CIDR values"
  default     = ["10.0.50.0/22", "10.0.60.0/22"]
}

variable "subnet_private_cidr" {
  description = "Private subnet CIDR values"
  default     = ["10.0.10.0/18", "10.0.20.0/18"]
}

variable "subnet_private_db_cidr" {
  description = "private subnet database CIDR values"
  default     = ["10.0.30.0/22", "10.0.40.0/22"]
}

variable "extra_tags" {
  description = "Additional tags to be used"
  default     = {}
}

variable enable_vpc_flow_logs {
  description = "Enable VPC flow logs with type REJECT only"
  default = 1
}

variable "vpc_tags" {
  description = "vpc tags"
  default     = {}
}

variable "subnet_public_tags" {
  description = "public subnet tags"
  default     = {}
}

variable "subnet_private_tags" {
  description = "private subnet tags"
  default     = {}
}
