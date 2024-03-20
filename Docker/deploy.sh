#!/bin/bash

NOME_IMAGEM="amanda-nigixnds1"
TAG="latest"
Nome_Container="container_testnds1"


echo "Construindo a imagem Docker..."
docker build -t $NOME_IMAGEM:$TAG .

if [ $? -eq 0 ]; then
    echo "Imagem Docker construída com sucesso: $NOME_IMAGEM:$TAG"

    # Executar o contêiner Docker
    echo "Iniciando o contêiner Docker..."
    docker run -d -p 9090:3000 --name $Nome_Container  $NOME_IMAGEM:$TAG
else
    echo "Erro ao construir a imagem Docker"
fi
