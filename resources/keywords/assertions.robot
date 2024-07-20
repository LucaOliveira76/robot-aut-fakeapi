*** Settings ***
Documentation    File containing the actions performed by the tests.

Resource    ${ROOT}/resources/main.robot

*** Keywords ***
the status code should be "${status_code}"
    Status Should Be    ${status_code}    ${response}

the search should return the correct data
    ${json}=    Load Json From File    ${ROOT}/resources/data/data.json
    Dictionary Should Contain Item    ${response.json()}    id    ${json}[id]
    Dictionary Should Contain Item    ${response.json()}    title    ${json}[title]
    Dictionary Should Contain Item    ${response.json()}    description    ${json}[description]
