*** Settings ***
Documentation    File containing the actions performed by the tests.

Resource    ${ROOT}/resources/main.robot

*** Keywords ***
That the API Connection has been stablished
    Pass Execution    Pass
    
Request the full book's list
    Pass Execution    Pass

request the book "${book}"
    Pass Execution    Pass

post a new book
    Pass Execution    Pass


update the book "${book}"
    Pass Execution    Pass
    

delete the book "${book}"
    Pass Execution    Pass
