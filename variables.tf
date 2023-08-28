variable "zone_id" {
  type        = string
  description = "Hosted Zone id of the desired Hosted Zone."
}

variable "spf_include" {
  type        = list(string)
  description = "SPF record list"
  default = [
    "include:spf.messagingengine.com",
  ]
}
