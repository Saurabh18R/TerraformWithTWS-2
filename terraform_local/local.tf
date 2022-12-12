resource "local_file" "devops" {
	filename = "/home/ubuntu/terraform2/terraform_local/devops_automated.txt"
	content = "This is automated local file using Terrafrom"
}

resource "random_string" "rand_str" {
length = 16
special = true
override_special = "!@#$%&*()_-[]{}="
}

output "rand_str" {
value = random_string.rand_str[*].result
}

