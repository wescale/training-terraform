# Concept de base

## Première exécution
* Initialisez la stack avec un `terraform init`.
* Lancez un `terraform plan` et étudiez le retour de la commande. 
* Lancez un `terraform apply`, validez son exécution et étudiez le retour de la commande.

## Modification des valeurs
* Modifiez le fichier `variables.tf` en augmentant la valeur de `population`.
* Lancez un `terraform plan` et étudiez le retour de la commande.
* Lancez un `terraform apply`, validez son exécution et étudiez le retour de la commande.

## Gestion des valeurs via un fichier
* Créez un fichier `terraform.tfvars` pour gérer la valeur de la `population`
* Syntaxe: 
```terraform
"<VARIABLE>"="<VALEUR>"
```
* Lancez un `terraform plan` et étudiez le retour de la commande.
* Lancez un `terraform apply`, validez son exécution et étudiez le retour de la commande.
