*** Settings ***
Documentation    This is a test suite responsible for the test cases related with 
...    the Books endpoints available in: https://fakerestapi.azurewebsites.net/index.html

Resource    ${ROOT}/resources/main.robot

*** Test Cases ***
Test Case: Search the full book's list
    [Documentation]    Test case responsible to request the full book's list and 
    ...    validate its successful status code.
    [Tags]    TC01
    Given that the API Connection has been stablished
    When request the full book's list
    Then the status code should be "200"

Test Case: Search specific book
    [Documentation]    Test case responsible to request a specific 
    ...    book and validate its successful status code.
    [Tags]    TC02
    Given that the API Connection has been stablished
    When request the book "15"
    Then the status code should be "200"

Test Case: Validate return for specific book search
    [Documentation]    Test case responsible to request a specific 
    ...    book and validate that it's returning the correct data.
    [Tags]    TC03
    Given that the API Connection has been stablished
    When request the book "15"
    Then the search should return the correct data

Test Case: Post new book
    [Documentation]    Test case responsible to post a new book and
    ...    Validate its successful status code.
    [Tags]    TC04
    Given that the API Connection has been stablished
    When post a new book
    Then the status code should be "200"

Test Case: Update existing book
    [Documentation]    Test case responsible to update a existing book 
    ...    and Validate its successful status code.
    [Tags]    TC04
    Given that the API Connection has been stablished
    When update the book "16"
    Then the status code should be "200"

Test Case: Delete existing book
    [Documentation]    Test case responsible to delete a existing book 
    ...    and Validate its successful status code.
    [Tags]    TC04
    Given that the API Connection has been stablished
    When delete the book "17"
    Then the status code should be "200"
