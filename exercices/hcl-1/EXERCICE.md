# Syntaxe HCL, première partie

## Première datasource
* Écrivez une datasource de type `local_file`, nommée `population` qui va lire le fichier `people.json` présent dans le répertoire courant (le fichier est créé lors de l'exercice précédent **concept**).
* Affichez le contenu de ce fichier encodé en base64

## Première resource
* Écrivez une resource de type `tls_private_key` de type `RSA` et de taille `4096` nommée key
* Affichez la clef publique au format PEM.
