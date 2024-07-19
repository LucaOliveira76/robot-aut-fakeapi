*** Settings ***
Documentation    File containing the actions performed by the tests.

Resource    ${ROOT}/resources/main.robot

*** Keywords ***
That the API Connection has been stablished
    Pass Execution
    
Request the full book's list
    Pass Execution

request the book "${book}"
    Pass Execution

post a new book
    Pass Execution


update the book "${book}"
    Pass Execution
    

delete the book "${book}"
    Pass Execution
