variable "environment" {
  type        = string
  description = "This variable defines the environment to be built"
  default     = "dev"
}

variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-east-2"
}