# Desafio técnico automação
## Necessário
- Ter um ambiente configurado com a ferramenta Docker CE e o Docker compose que pode ser instalado através dos links abaixo.

## Linux
- Ubuntu, Mint ou ElementaryOS [Acessar](https://docs.docker.com/install/linux/docker-ce/ubuntu/)
- Fedora [Acessar](https://docs.docker.com/install/linux/docker-ce/fedora/)
- Debian [Acessar](https://docs.docker.com/install/linux/docker-ce/debian/)

- Docker compose [Acessar](https://docs.docker.com/compose/install/)

## Mac
- Mac [Acessar](https://docs.docker.com/docker-for-mac/install/)

## Windows
- *Windows 7, 8, 8.1 e 10*
Requisitos

- Habilite a virtualização do HyperV clicando [aqui](https://docs.docker.com/docker-for-windows/troubleshoot/#virtualization-must-be-enabled)

- Faça o Download e instale o Docker Desktop [Acessar](https://docs.docker.com/docker-for-windows/install/)


# Execução
- Após clonar o projeto, acesse a pasta raiz e execute o seguinte comando para preparar a estrutura necessária para a execução dos testes.
-  ```docker-compose build```

- **ATENÇÃO:** Na primeira execução é necessário aguardar alguns minutos para conclusão dos downloads necessários.
- Em seguida execute o seguinte comando para iniciar a execução dos testes:
-  ```docker-compose up```

# Report
- Para conferir o resultado dos testes após a execução basta acessar o diretório log na raiz do projeto e verificar o arquivo ```report.html```

# Sugestão de melhorias
- Realizar análise do projeto buscando melhorias de performance na troca entre páginas.
- Cenários como clicar em um produto após realizar a busca e carregar as informações do produto no carrinho as páginas demoram a carregar.
- Em algumas execuções após clicar em um produto ou acessar o carrinho foi apresentada apenas uma tela em branco.
- Uma solução temporária foi adicionar um tempo de espera máximo de 45 segundos.
