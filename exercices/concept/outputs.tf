output "pets_by_owners" {
  description = "Map of pet owner and pet relationships."
  value       = zipmap(random_pet.people.*.id, random_pet.pet.*.id)
}
