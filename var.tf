variable "akey" {
  description = "access key"
  type        = string
  

}
variable "skey" {
  description = "secret key"
  type        = string
  

}
variable "location" {
  description = "region"
  type        = string
  default     = "ap-south-1"

}

# variable "ingress_rule" {
#   type = list(object({ port = number
#     proto = string
#     des   = string
#   }))
# }

# variable "bnames" { type = map(any) }
# variable "inames" { type = map(any) }
# variable "env" { type = string }


# variable "envdemo" {
#   type = map(object({
#     instance_type = string
#     instance_name = string
#   }))
# }
