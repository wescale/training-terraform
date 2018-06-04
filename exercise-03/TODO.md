# Exercice 3

Utiliser `terraform show
`
## 3.1

* Copier dans `main.tf` ici le code du security group de l'exercice 2.
* lancer un plan
* utiliser terraform mv pour déplacer la ressource 'aws_security_group.allow_all' du state de l'exercice 2 à un
* fichier terraform.tfstate dans ce répertoire
* refaire un terraform plan

Que constatez-vous ?

* faire la manipulation inverse et rendre le security_group à son tfstate original.


## 3.2

Dans le répertoire de l'exercice 2 :

* utiliser `terraform taint` et `apply` pour forcer la recréation des
security group rules