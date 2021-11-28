output "pets_by_owners" {
  value =zipmap(random_pet.people.*.id,random_pet.pet.*.id)
}
