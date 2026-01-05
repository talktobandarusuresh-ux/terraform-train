variable "ami_id" {
  default     = "ami-09c813fb71547fc4f"
  description = "The AMI ID for the EC2 instance"
  type        = string
}
variable "instance_type" {
  default     = "t3.micro"
  description = "The instance type for the EC2 instance"
  type        = string
}
variable "ec2-tags" {
  type        = map(string)
  description = "Tags to apply to the EC2 instance"
  default = {
    Name        = "terraform"
    Terraform   = "true"
    environment = "dev"

  }
}
variable "sg-name" {
  description = "Name of the security group"
  type        = string
  default     = "allow_all_traffic"
}
variable "cidr-blocks" {
  description = "CIDR blocks for security group rules"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
variable "ingress_from_port" {
  description = "Starting port for ingress rule"
  type        = number
  default     = 0
}
variable "ingress_to_port" {
  description = "Ending port for ingress rule"
  type        = number
  default     = 0
}

variable "egress_from_port" {
  description = "Starting port for egress rule"
  type        = number
  default     = 0
}
variable "egress_to_port" {
  description = "Ending port for egress rule"
  type        = number
  default     = 0
}
variable "protocol" {
  description = "Protocol for security group rules"
  type        = string
  default     = "-1"
}
variable "sg-tags" {
  type        = map(string)
  description = "Tags to apply to the security group"
  default = {
    name  = "terraformSG"
    value = "terraform"
  }
}