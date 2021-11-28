# Exercice : Syntaxe HCL

* Écrire une datasource de type `gitlab_user`, nommée `trainee` avec un filtre portant sur le `username` que vous avez précédemment créé.


* Écrire une datasource de type `gitlab_group`, nommée `trainees` avec un filtre `id` portant sur l'attribut `grp_id` de `data.aws_vpc.training`.

* Écrire une ressource de type `gitlab_group_membership` qui va ajouter l'utilisateur `trainee` dans le groupe `trainees` en lui donnant les droits `owner`

