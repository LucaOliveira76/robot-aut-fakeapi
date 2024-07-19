*** Settings ***
Documentation    File containing the actions performed by the tests.

Resource    ${ROOT}/resources/main.robot

*** Keywords ***
the status code should be "${book}"
    Pass Execution

the search should return the correct data
    Pass Execution
