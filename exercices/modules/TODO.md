# Exercice : Module

Le fichier `main.tf` contient la définition de 2 ressources `aws_security_group` qui ont chacunes 2 `aws_security_group_rule` avec des attributs identiques.

* Créer un module dans un sous-répertoire qui:
  * soit constitué de 3 fichiers: `main.tf`, `variables.tf`, `output.tf`
  * crée une ressource `aws_security_group`
  * crée 2 ressources `aws_security_group_rule` avec les mêmes attributs originaux que dans `main.tf`
  * exporte l'attribut `id` du `aws_security_group` via un output nommé `security_group_id`

* Remplacer dans `main.tf` les ressources `aws_security_group` et `aws_security_group_rule` par 2 instanciations de ce nouveau module.

* Modifier le `output.tf` original pour lui faire exporter les attributs `security_group_id` des instances de modules.
