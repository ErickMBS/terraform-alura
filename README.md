# TERRAFORM

## Site
- https://terraform.io

## Para que serve
Gerenciar a infraestrutura Web sem ser dependente da plataforma escolhida.
É configurável por meio de código e permite que mudemos de plataforma de forma mais fácil e estável.

## Configuração de chaves ssh
É recomendável que caso seja necessário o uso de ssh para conexão das máquinas e instâncias na nuvel a criação da chave seja local e importadas na nuvel destino.

A chave pode ser criada com o comando '`sh-keygen -f terraform-aws -t rsa`'

## Primeiros passos
- Na primeira execução é necessário utilizar o seguinte comando para que ele possa baixar as dependências:
    - `terraform init`

- Para fazer o deploy, primeiro devemos utilizar o comando abaixo onde ele mostra o 'planejamento' de como ficará o ambiente:
    - `terraform plan`

- E por fim, para realmente aplicar as configurações e criar os recursos desejados executar o comando:
    - `terraform apply`

