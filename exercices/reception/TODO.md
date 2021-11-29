# Exercice : Pièce de réception

## Création d'une instance

* Configurer un backend s3 vers le bucket `tfstates-training`
* Créez un vpc à l'aide du module `lde/simple-vpc`
* Créer un workspace `dev`
* Créer une `aws_keypair` avec le chemin vers le fichier de clé publiques en variable
* Créer une `aws_security_group` ouvert à un CIDR source variable (par défaut `0.0.0.0/0`)

* Créer une aws_instance :
  * de type "t2.micro"
  * adresse ip publique
  * dans un des subnets existant de la couche setup
  * installation d'apache au démarrage
  * en injectant la keypair créée susditement

* Ajoutez un output pour connaitre l'ip publique de l'instance.

## Création d'un pool d'instance identiques

* En jouant sur `count` et `count.index`, démarrer une machine dans chacun des subnets du layer `setup`.
* Ajoutez un unique output contenant toutes les ip publiques des machines.
* Vérifiez que apache répond sur chacune des instances.

## Instanciation de nouveaux environnements

* Créez un nouveau workspace 'staging' et instanciez votre stack une seconde fois dedans.
* Vérifiez que apache répond sur chacune des instances de staging.

## Nettoyage

* Nettoyez votre workspace 'dev'.
* Nettoyez votre workspace 'staging'.
* Supprimez vos workspaces.
