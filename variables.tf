variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstance"
}

# will be default by default when setting your AWS acc, replace accordingly with access key/id if necessary
variable "AWS_PROFILE" {
  description = "AWS CLI profile used"
  type        = string
}

variable "AWS_REGION" {
  description = "AWS CLI profile used"
  type        = string
}
