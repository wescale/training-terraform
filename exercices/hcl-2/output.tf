output "regions_list" {
  value = keys(var.id_by_region)
}
output "regions_count" {
  value = length(var.id_by_region)
}
output "id_paris" {
  value = var.id_by_region["eu-west-3"]
}
output "clean_sizes" {
  value = split(",",var.raw_sizes)
}
output "up_colors" {
  value = [for color in var.colors : upper(color)]
}

output "az_list" {
  value = [for az in data.aws_availability_zones.az_list.names : upper(az)]
}

output "dns_instance" {
  value = aws_instance.test_instance.*.public_dns
}
