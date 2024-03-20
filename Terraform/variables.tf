variable "region" {
  description = "Região da AWS onde a instância será provisionada"
}

variable "ssh_cidr" {
    description = "Bloco CIDR para permitir acesso SSH"
}
output "public_ip" {
  value = aws_instance.newintancia.public_ip
}
