# Terraform AWS Instance

Este projeto Terraform provisiona uma instância na AWS com uma configuração mínima de segurança.

## Pré-requisitos
- Terraform instalado localmente
- Credenciais da AWS configuradas localmente

## Uso
1. Clone este repositório.
2. Crie o terraform.tfvars  com as suas informações que são pedidas em varieables.
3. Execute `terraform init` para inicializar o diretório.
4. Execute `terraform plan` para visualizar as mudanças planejadas.
5. Execute `terraform apply` para criar os recursos na AWS.
6. Acesse a instância via SSH usando o endereço IP público fornecido na saída.
7. Para fazer alterações nos recursos, edite o arquivo Terraform conforme necessário e execute `terraform apply` novamente.
   

## Recursos Provisionados
- VPC
- Subnet
- Security Group
- Instância EC2
