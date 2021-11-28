output "my_password" {
  value = random_password.user_password.result
  sensitive = true
}
