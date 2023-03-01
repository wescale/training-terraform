# Workflow

* Initialize the stack with `terraform init`
* Run `terrafomr plan` and check its content.
* Run `terraform apply`
* Edit `variables.tf` to add more couples to the population by editing the default value.
* Run `terraform apply`
* Write a `terraform.tfvars` to override the population count, format:
  * `variable = "<VALUE>"`
* Run `terraform apply`
