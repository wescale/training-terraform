output "vpc_id" {
  value = "${aws_vpc.training.id}"
}


output "subnet_list" {
  value = "${aws_subnet.public.*.id}"
}

output "moto" {
  value = "Terraform c'est de la bombe"
}