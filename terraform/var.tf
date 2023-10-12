variable "environment" {
  description = "The environment to deploy (dev, prod, qa)"
  default     = "dev" # Default to dev if not specified
}

variable "region" {
  description = "The environment to deploy (dev, prod, qa)"
  default     = "us-east-1" # Default to dev if not specified
}