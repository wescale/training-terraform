# Workflow

* Définir les variables d'environnement nécessaires pour le provider aws. (`source .envrc`)
* Initialiser la stack avec un `terraform init`
* Lancer un `terraform plan` et vérifier qu'il vous convient.
* Lancer la création avec un `terraform apply`
* Modifier le fichier `variables.tf` pour y intégrer votre nom et un CIDR en valeur par défaut.
* Détruisez avec un `destroy`
