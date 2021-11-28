data "terraform_remote_state" "gitlab_setup" {
  backend = "local"
  config = {
    path = "../../gitlab_setup/terraform.tfstate"
  }
}

resource "gitlab_group" "trainees" {
  name = random_pet.grp_name.id
  path = random_pet.grp_name.id
}
resource "random_pet" "grp_name" {
  length = 1
}
data "gitlab_user" "trainee" {
  username = "lilian.deloche"
}

resource "gitlab_group_membership" "member_assoc" {
  access_level = "owner"
  group_id     = gitlab_group.trainees.id
  user_id      = data.gitlab_user.trainee.id
}
