resource "gitlab_group" "trainees" {
  name = random_pet.grp_name.id
  path = random_pet.grp_name.id
}
resource "random_pet" "grp_name" {
  length = 1
}
