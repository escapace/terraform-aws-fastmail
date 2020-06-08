variable "zone_id" {}

variable "spf_include" {
  type        = list(string)
  description = "SPF record list"
  default = [
    "include:spf.messagingengine.com",
  ]
}

