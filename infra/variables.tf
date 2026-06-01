variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used as prefix for resource names"
  type        = string
  default     = "devops-demo"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type (t3.micro is Free Tier eligible on new AWS accounts)"
  type        = string
  default     = "t3.micro"
}

variable "volume_type" {
  description = "EBS volume type for the root block device"
  type        = string
  default     = "gp3"
}

variable "volume_size" {
  description = "EBS volume size in GB (Free Tier includes 30 GB)"
  type        = number
  default     = 30
}

variable "app_port" {
  description = "Port exposed by the application"
  type        = number
  default     = 8000
}

variable "allowed_ssh_cidr_blocks" {
  description = "CIDR blocks allowed for SSH. Include 0.0.0.0/0 so GitHub Actions can deploy (auth is still via SSH key)."
  type        = list(string)
}

variable "public_key" {
  description = "SSH public key for EC2 access"
  type        = string
}
