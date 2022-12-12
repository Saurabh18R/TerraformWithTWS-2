variable "filename" {
	default  = "/home/ubuntu/terraform2/terraform-variable/devops-automated.txt"	
}

variable "content" {
	default = "This is auto generated from a variable"

}

variable "devops_op_trainer" {}

variable "content_map" {
type = map
default = {
"content1" = "This is Content1"
"content2" = "This is Content2"
}
}

variable "file_list" {
type = list
default = ["/home/ubuntu/terraform2/terraform-variable/file_1.txt", "/home/ubuntu/terraform2/terraform-variable/file_2.txt"]
}

variable "aws_ec2_object" {
  type = object({
	name = string
	instances = number
	keys = list(string) 
	ami = string

})

default = {
	name = "test_ec2_instance"
	instances = 4
	keys = ["key1.pem", "key2.pem"]
	ami = "ubuntu-adef123"
}
}

variable "no_of_students" {}

