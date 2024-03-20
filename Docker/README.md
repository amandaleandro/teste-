# Desafio Kubernetes

Este é um projeto desenvolvido como parte de um desafio relacionado ao Kubernetes.

## Instalação e Uso

### Pré-requisitos

Certifique-se de ter o Docker instalado em sua máquina.

### Instalação

1. Clone o repositório:

   ```bash
   git clone https://github.com/your-username/desafio-kubernetes.git
Navegue até o diretório do projeto:

```bash
Copy code
cd desafio-kubernetes
```

Execute o script de construção e execução do contêiner Docker:

```bash
Copy code
./build_and_run.sh
```

# Variável de Ambiente

- NAME: Defina o nome exibido na página inicial. No meu caso defini "Amanda".
Acesso à Aplicação
Após iniciar o contêiner Docker, a aplicação estará acessível em:
``
http://localhost:9090
``

# Estrutura do Projeto

-app.js: O código principal da aplicação Express.

-package.json: Arquivo de manifesto do Node.js com as dependências do projeto.

-build_and_run.sh: Script bash para construir a imagem Docker e iniciar o contêiner.

-Dockerfile: Arquivo para criar a imagem Docker.