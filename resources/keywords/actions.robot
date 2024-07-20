*** Settings ***
Documentation    File containing the actions performed by the tests.

Resource    ${ROOT}/resources/main.robot

*** Keywords ***
That the API Connection has been stablished
    Pass Execution    Pass
    
Request the full book's list
    ${response}=    GET    url=${URL_API}/Books
    Set test variable    ${response}

request the book "${book_id}"
    ${response}=    GET    url=${URL_API}/Books/${book_id}
    Set Test Variable    ${response}

post a new book
    ${body}=    Load Json From File    ${ROOT}/resources/data/post_data.json
    ${headers}=    Create Dictionary    content-type=application/json
    ${response}=    POST    url=${URL_API}/Books    json=${body}    headers=${headers}    expected_status=any
    Set Test Variable    ${response}

update the book "${book}"
    ${body}=    Create Dictionary    id=${${book}}    title=Book ${book}    description=Lorem lorem ipsum.    
    ...    pageCount=${1500}    excerpt=Lorem lorem ipsum.    publishDate=2024-07-20T14:28:18.240Z
    ${headers}=    Create Dictionary    content-type=application/json
    ${response}=    PUT    url=${URL_API}/Books/${book}    json=${body}    headers=${headers}    expected_status=any
    Set Test Variable    ${response}
    
delete the book "${book}"
    ${response}=    DELETE    url=${URL_API}/Books/${book}
    Set Test Variable    ${response}
