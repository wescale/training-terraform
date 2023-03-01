# States

Run `terraform show`

## Move

* Run `terraform apply`.
* Change the resource name and run `terraform plan`
* Write a `moved` block to have the state resource renamed and run `terraform apply`
* Rename again the resource
* Use `terraform state mv` to rename the resource
* Run `terraform plan`

## Taint

* Run `terraform taint` et `terraform apply` to force the resource `tls_private_key.key` to be recreated
