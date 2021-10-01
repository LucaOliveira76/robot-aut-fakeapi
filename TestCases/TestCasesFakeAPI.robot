*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Resource            ../Resources/ResourceFakeAPI.robot
Resource            ../Resources/BDDpt-br.robot
Suite Setup         Conectar a minha API



*** Test Cases ***
Buscar a listagem de todos os livros (GET em todos os livros)
    Quando Requisitar todos os livros
    Então Conferir o status code "200"
    E Conferir o reason "OK"
    E Conferir se retorna uma lista com "200" livros

Buscar um livro específico (GET em um livro específico)
    Quando Requisitar o livro "15"
    Então Conferir o status code "200"
    E Conferir o reason "OK"
    E Conferir se retorna todos os dados corretos do livro 15

Cadastrar um novo livro (POST)
    Quando Cadastrar um novo livro
    Então Conferir o status code "200"
    E Conferir o reason "OK"
    E Conferir se retorna os dados corretamente


Cadastrar um novo livro (PUT)
    Quando Cadastrar o livro "0"
    Então Conferir o status code "200"
    E Conferir o reason "OK"
    E Conferir se retorna os dados corretamente

Deletar livro
    Quando Deletar o livro "1"
    Então Conferir o status code "200"
    E Conferir o reason "OK"