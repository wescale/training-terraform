# TP Final

# Step 1

* Configurez un backend s3 vers le bucket 'training-tfstates'
* Créez une datasource de type 'terraform_remote_state' pointant vers le tfstate de la couche setup.
* Créez un workspace 'dev'
* Créez une keypair avec le chemin vers le fichier de clé publiques en variable
* Créez une security group ouvert à un CIDR source variable (par défaut 0.0.0.0/0)

* démarrez une aws_instance :
  * de type "t2.micro"
  * adresse ip publique
  * dans un des subnets existant de la couche setup
  * installation d'apache au démarrage
  * en injectant la keypair créée susditement

* Ajoutez l'outputs pour connaitre l'ip publique de l'instance.
* En jouant sur count et count.index, démarrez une machine dans chacun des subnets de la couche setup.
* Ajoutez *un* output avec toutes les ip publiques des machines.
* Vérifiez que apache répond sur chacune des instances.

* Créez un nouveau workspace 'staging' et instanciez votre stack une seconde fois dedans.
* Vérifiez que apache répond sur chacune des instances de staging.
* Nettoyez votre workspace 'dev'.
* Nettoyez votre workspace 'staging'.
* Supprimez vos workspaces.
