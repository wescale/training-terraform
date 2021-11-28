# Exercice : Module

Le fichier `main.tf` contient la définition de 2 ressources `gitlab_project` qui ont chacun 2 `gitlab_deploy_token` avec des attributs identiques à l'exception du scope.

* Créer un module dans un sous-répertoire qui:
  * soit constitué de 3 fichiers : `main.tf`, `variables.tf`, `output.tf`
  * crée une ressource `gitlab_project`
  * crée 2 ressources `gitlab_deploy_token` avec les mêmes attributs originaux que dans `main.tf`
  * exporte l'attribut `id` du `gitlab_project` via un output nommé `project_id`

* Remplacer dans `main.tf` les ressources `gitlab_project` et `gitlab_deploy_token` par 2 instanciations de ce nouveau module.

* Modifier le `output.tf` original pour lui faire exporter les attributs `project_id` des instances de modules.
