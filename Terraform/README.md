# Terraform AWS Instance

Este projeto Terraform provisiona uma instância na AWS com uma configuração mínima de segurança.

## Pré-requisitos
- Terraform instalado localmente
- Credenciais da AWS configuradas localmente

## Uso
1. Clone este repositório.
2. Execute `terraform init` para inicializar o diretório.
3. Execute `terraform plan` para visualizar as mudanças planejadas.
4. Execute `terraform apply` para criar os recursos na AWS.
5. Acesse a instância via SSH usando o endereço IP público fornecido na saída.
6. Para fazer alterações nos recursos, edite o arquivo Terraform conforme necessário e execute `terraform apply` novamente.

## Recursos Provisionados
- VPC
- Subnet
- Security Group
- Instância EC2
