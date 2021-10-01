*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Resource            ../Resources/ResourceFakeAPI.robot
Suite Setup         Conectar a minha API



*** Test Cases ***
Buscar a listagem de todos os livros (GET em todos os livros)
    Requisitar todos os livros
    Conferir o status code      200
    Conferir o reason           OK
    Conferir se retorna uma lista com "200" livros

Buscar um livro específico (GET em um livro específico)
    Requisitar o livro "15"
    Conferir o status code      200
    Conferir o reason           OK
    Conferir se retorna todos os dados corretos do livro 15

Cadastrar um novo livro (POST)
    Cadastrar um novo livro
    Conferir o status code      200
    Conferir o reason           OK
    Conferir se retorna os dados corretamente


Cadastrar um novo livro (PUT)
    Cadastrar o livro "0"
    Conferir o status code      200
    Conferir o reason           OK
    Conferir se retorna os dados corretamente

Deletar livro
    Deletar o livro "1"
    Conferir o status code      200
    Conferir o reason           OK