Passo 1: Preparação
Instale o Terraform:
Se você ainda não tiver o Terraform instalado, você pode baixá-lo do site oficial do Terraform e seguir as instruções de instalação.

Configure suas credenciais da AWS:
Certifique-se de ter suas credenciais da AWS configuradas localmente. Isso geralmente é feito configurando as variáveis de ambiente `AWS_ACCESS_KEY_ID` e `AWS_SECRET_ACCESS_KEY`, ou configurando um arquivo `~/.aws/credentials`. Consulte a documentação da AWS para obter mais detalhes sobre como configurar suas credenciais.

Passo 2: Clonar o Repositório
Clone o repositório que contém os arquivos Terraform fornecidos. Você pode fazer isso usando o Git:
```
bash
Copy code
git clone <URL do Repositório>
Substitua <URL do Repositório> pela URL real do seu repositório.
```
Passo 3: Inicializar o Diretório
Navegue até o diretório onde você clonou o repositório e execute o comando terraform init. Isso inicializará o diretório e baixará os plugins necessários.
```
bash
Copy code
cd <diretório do repositório>
terraform init
```
Passo 4: Visualizar as Mudanças Planejadas
Antes de criar os recursos na AWS, é uma prática recomendada visualizar as alterações planejadas. Você pode fazer isso executando terraform plan.

```bash
Copy code
terraform plan
```
Este comando mostrará uma visão geral das ações que o Terraform executará com base no seu código.

Passo 5: Aplicar as Alterações
Quando estiver pronto para criar os recursos na AWS, execute terraform apply. O Terraform solicitará sua confirmação antes de realizar as alterações.

bash
Copy code
terraform apply
Passo 6: Acessar a Instância
Após a conclusão bem-sucedida do comando terraform apply, você receberá o endereço IP público da instância na saída. Você pode usar esse endereço IP para acessar a instância via SSH.
```bash
Copy code
ssh -i <caminho_para_chave_privada> ec2-user@<endereço_IP_público>
Substitua <caminho_para_chave_privada> pelo caminho para sua chave SSH privada e <endereço_IP_público> pelo endereço IP público da instância.
```

Passo 7: Gerenciar Recursos
Para fazer alterações nos recursos ou remover a instância, você pode editar seu arquivo Terraform conforme necessário e, em seguida, executar terraform apply novamente para aplicar as mudanças. Por exemplo, você pode editar o arquivo main.tf para alterar o tipo de instância, a região da AWS, etc.
