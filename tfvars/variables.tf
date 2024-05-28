variable "instance_names" {
  type        = map
  default     = {
    db-dev = "t3.small"
    backend-dev = "t3.micro"
    frontend-dev = "t3.micro"
  }
}

variable "environment" {
  default = "dev"
}

variable "common_tags" {
    type = map
    default = {
      Project = "Expense"
      Terraform = "true"
    }
}
variable "domain_name" {
    default = "daws-78s-store"
}

variable "zone_id" {
    default = "Z05999091RWRWSVJIFQSS"
}