resource "aws_s3_bucket" "b1" {
  bucket = "demo1-kipi-testong"
}
resource "aws_s3_bucket" "b2" {
  bucket = "demo1-kipi-testing"
}

resource "aws_instance" "i1" {
    
    instance_type = "t2.micro"
    ami = "ami-0f559c3642608c138"
    tags =   {
        "Name"= "CostEstimation"
    }
}


# # resource "aws_s3_bucket" "b1" {
# #   # count  = length(var.bnames)
# #   # for_each = toset(var.bnames)
# #   for_each = var.bnames
# #   bucket   = each.value
# # }

# # create infra used for kipi project .. 03 instances , with different names , 
# # for prod : t2.medium , for dev and uat use t2.micro

# # resource "aws_instance" "i1" {
# #     for_each = var.inames
# #     instance_type = var.env == "prod" ? "t3.medium": "t2.micro"
# #     ami = "ami-0f559c3642608c138"
# #     tags =   {
# #         "Name"= each.value
# #     }
# # }


# # variable "env_config" {
# #     description = "Environment specific EC2 configuration"
# #     type = map(object({
# #         instance_type = string
# #         instance_name = string
# #     }))

# # default = {
# #     dev = {
# #         instance_type = "t2.micro"
# #         instance_name = "dev-server"
# #     }
# #     uat = {
# #         instance_type = "t2.small"
# #         instance_name = "uat-server"
# #     }
# #     qa = {
# #         instance_type = "t3.micro"
# #         instance_name = "qa-server"
# #     }
# #     prod = {
# #         instance_type = "t3.large"
# #         instance_name = "prod-server"
# #     }
# # }
# # }


# resource "aws_instance" "env_instances" {
#   for_each = var.envdemo

#   ami           = "ami-0f58b397bc5c1f2e8" # Amazon Linux 2 (ap-south-1)
#   instance_type = each.value.instance_type

#   tags = {
#     Name        = each.value.instance_name
#     Environment = each.key
#   }
# }

# # if instances are created with map

# output "publicIpAddress" {
#     value = {for k,v in aws_instance.env_instances: k => v.public_ip}
# }


# # if it is create with list type using count
# output "all_public_ips" {
#     value = aws_instance.env_instances[*].public_ip

# }
# if instances are created with list

# variable "list1" {
#     type = list(any)
#     default = ["test1", "test2"]
# }


# resource "aws_instance" "a1" {
#     count = length(var.list1)
#     ami = "ami-0f58b397bc5c1f2e8"
#     instance_type = "t2.small"
#     tags = {
#         Name = var.list1[count.index]
#     }
# }

# output "all_ips" {
#     value = aws_instance.a1[*].public_ip
# }