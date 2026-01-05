variable "instance_count" {
  default     = ["mongodb", "redis", "mysql", "rabbitmq"]
  type        = list(string)
  description = "List of instances to create"
}
variable "zone_id" {
  default = "Z00483002KQGHYINL2NKX"
}
variable "domain_name" {
  default = "bandarusuresh.in"
}