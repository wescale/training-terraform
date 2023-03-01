# Exercise 6

## Manipulation de workspaces

* Lister les workspaces
* Créez un workspace `dev`
* Lancer un `terraform apply`
* Créez un nouveau workspace `large` et faire un `terraform apply` dedans.
* Que constatez-vous ?
* Nettoyez votre workspace `dev` (avec `terraform destroy`)
* Nettoyez votre workspace `large` (avec `terraform destroy`)
* que constatez-vous au niveau du state ?
* Supprimez vos workspaces

## RAPPEL

* `terraform workspace list`
* `terraform workspace show`
* `terraform workspace new foobar`
* `terraform workspace select foobar`
* `terraform workspace delete foobar`
