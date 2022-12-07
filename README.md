# Avaliação assíncrona - Backend OMS

## O é para fazer?
Criar um projeto dockerizado utilizando o framework NestJS que reproduza uma API de autenticação simples para usuários fictícios.

## Requisitos:
1. [Docker](https://docs.docker.com/get-started)
2. [NestJS](https://docs.nestjs.com)
3. [TypeScript](https://www.typescriptlang.org/docs)

## Rotas:

1. `api/register - registrar usuários em um serviço de banco de dados`
```
curl --location --request POST 'http://localhost:3001/api/register' \
--header 'Content-Type: application/json' \
--data-raw '{
    "first_name": "John",
    "last_name": "Doe",
    "email": "john@domain.com",
    "password": "123",
    "password_confirm": "123"
}'
```
2. `api/users - listar todos os usuários da aplicação`
```
curl --location --request GET 'http://localhost:3001/api/users'
```

3. `api/login - fazer autenticação de usuário previamente cadastrado`
```
curl --location --request POST 'http://localhost:3001/api/login' \
--header 'Content-Type: application/json' \
--header 'Cookie: jwt=eyJhbGczI.eyJpZCI6MTEsNywiZXhwIjoxNjcwNTE3Njg3fQ.pacBNpXGc1-XzHIK2-xdY0qqo' \
--data-raw '{
    "email": "john@domain.com",
    "password": "123"
}'
```

4. `api/user - retornar dados do usuário logado`
```
curl --location --request GET 'localhost:3001/api/user' \
--header 'Cookie: jwt=eyJhbGczI.eyJpZCI6MTEsNywiZXhwIjoxNjcwNTE3Njg3fQ.pacBNpXGc1-XzHIK2-xdY0qqo'
```

## Recomendações:

1. Procure trabalhar com containers de responsabilidades isoladas usando o driver bridge para comunicação.
2. As rotas `api/user` e `api/users` deverão retornar conteúdo somente se existir usuário logado.
3. Ao terminar, crie um repositório no GitHub e nos envie o link do código fonte.
4. Não é necessário deployar nada, mas é muito importante criar um README.md explicando o que devemos fazer para rodar a aplicação.
5. No mais é isso, faça um bom teste e boa sorte! 

