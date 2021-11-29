# Exercice : Module

Le fichier `main.tf` contient la définition de 2 ressources `tls_private_key` qui ont chacun 1 `local_file` avec des attributs identiques à l'exception du scope.

* Créer un module dans un sous-répertoire qui:
  * soit constitué de 3 fichiers : `main.tf`, `variables.tf`, `output.tf`
  * crée les ressources `tls_private_key` avec les mêmes attributs originaux que dans `main.tf`
  * exporte l'attribut `public_key_fingerprint_md5` du `tls_private_key` via un output nommé `key_fingerprint`

* Remplacer dans `main.tf` les ressources `tls_private_key` et `local_file` par 2 instanciations de ce nouveau module.

* Modifier le `output.tf` original pour lui faire exporter les attributs `key_fingerprint` des instances de modules.
