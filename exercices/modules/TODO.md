# Modules

Our `main.tf` file contains 2 resources `tls_private_key` with their `local_file` having similar attributes.

* Let's build a module in a subdirectory:
  * 3 files: `main.tf`, `variables.tf`, `outputs.tf`
  * `tls_private_key` resources with the same attributes
  * outputs `public_key_fingerprint_md5` from the `tls_private_key` under the same `key_fingerprint`

* Change `main.tf` to have it call the module twice instead of the previous resources.

* Write an `outputs.tf` to output `key_fingerprint` from the modules
