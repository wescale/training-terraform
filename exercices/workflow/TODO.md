# Workflow

* Définir les variables d'environnement nécessaires pour le provider aws. (`source .envrc`)
* Initialiser la stack avec un `terraform init`
* Lancer un `terraform plan` et vérifier qu'il vous convient.
* Lancer un `terraform apply`
* Modifier le fichier `variables.tf` pour y intégrer votre nom et un CIDR en valeur par défaut.
* Lancer un `terraform apply`
* Créer un fichier `terraform.tfvars` pour y intégrer votre nom et un CIDR au format:
  * `variable = "<VALEUR>"`
* Lancer un `terraform apply`
* Détruisez avec un `terraform destroy`
