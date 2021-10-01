*** Settings ***
Documentation       Documentação da API: https://fakerestapi.azurewebsites.net/index.html
Library             RequestsLibrary
Library             Collections
Library             OperatingSystem




*** Variables ***
${URL_API}          https://fakerestapi.azurewebsites.net/api/v1/

&{HEADER}           content-type=application/json


&{BOOK_15}          id=15   
...                 title=Book 15   
...                 pageCount=1500


*** Keywords ***
# SETUP E TEARDOWN

Conectar a minha API
    Create Session      fakeAPI     ${URL_API}

    ${CONTEUDO}                 Get file                        ../Resources/data.json
    Set suite Variable          ${CONTEUDO}

    ${json}=    Evaluate        json.loads($CONTEUDO)           json
    Set suite Variable          ${json}

# REQUISIÇÕES

    # GET REQUEST
Requisitar todos os livros
    ${RESPOSTA}                 GET                             ${URL_API}Books
    Set Test Variable           ${RESPOSTA}

Requisitar o livro "${ID_LIVRO}"
    ${RESPOSTA}                 GET                             ${URL_API}Books/${ID_LIVRO}
    Set Test Variable           ${RESPOSTA}

    # POST REQUEST
Cadastrar um novo livro
    ${RESPOSTA}                 POST                            ${URL_API}Books                     data=${CONTEUDO}    headers=${HEADER}
    Set Test Variable           ${RESPOSTA}

    # PUT REQUEST
Cadastrar o livro "${id_livro}"
    ${RESPOSTA}                 PUT                             ${URL_API}Books/${id_livro}         data=${CONTEUDO}    headers=${HEADER}
    Set test variable           ${RESPOSTA}

    # DELETE REQUEST
Deletar o livro "${livro}"
    ${RESPOSTA}                 DELETE                          ${URL_API}Books/${livro}
    Status should be            200                             ${RESPOSTA}
    Set test variable           ${RESPOSTA}

# CONFERENCIAS

Conferir o status code "${STATUS_CODE_DESEJADO}"
    # [Arguments]                 ${STATUS_CODE_DESEJADO}
    Should be equal as strings  ${RESPOSTA.status_code}         ${STATUS_CODE_DESEJADO}

Conferir se retorna os dados corretamente
    Dictionary Should contain item                              ${RESPOSTA.json()}                  id                  ${json}[id]

    Dictionary should contain item                              ${RESPOSTA.json()}                  title               ${json}[title]

    Dictionary should contain item                              ${RESPOSTA.json()}                  description         ${json}[description]

Conferir o reason "${STATUS_REASON_DESEJADO}"
    # [Arguments]                 ${STATUS_REASON_DESEJADO}
    Should be equal as strings                                  ${RESPOSTA.reason}                  ${STATUS_REASON_DESEJADO}

Conferir se retorna uma lista com "${QUANTIDADE_LIVROS}" livros
    Length Should be            ${RESPOSTA.json()}              ${QUANTIDADE_LIVROS}

Conferir se retorna todos os dados corretos do livro 15
    Dictionary should contain item                              ${RESPOSTA.json()}                  id                  ${BOOK_15.id}

    Dictionary should contain item                              ${RESPOSTA.json()}                  title               ${BOOK_15.title}
    
    Dictionary should contain item                              ${RESPOSTA.json()}                  pageCount           ${BOOK_15.pageCount}
    
    # DESCRIÇÃO É GERADA ALEATORIAMENTE
    Should not be empty         ${RESPOSTA.json()["description"]}

    # EXCERPT É GERADO ALEATORIAMENTE
    Should not be empty         ${RESPOSTA.json()["excerpt"]}

    # PUBLISHDATE É GERADO ALEATORIAMENTE
    Should not be empty         ${RESPOSTA.json()["publishDate"]}