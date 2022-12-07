# variable "environment" {
#   type    = string
#   default = "dev"
# }

variable "vpc_cidr_block" {
  type        = string
  default     = "10.0.0.0/16"
  description = "vpc cidr block"
}

variable "public_subnet_cidr" {
  type        = string
  default     = "10.0.1.0/24"
  description = "public subnet cidr block"
}

variable "private_subnet_cidr" {
  type        = string
  default     = "10.0.2.0/24"
  description = "private subnet cidr block"
}
