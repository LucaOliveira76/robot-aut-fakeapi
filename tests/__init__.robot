*** Settings ***
Library    OperatingSystem
Suite Setup    Create Root Variable

*** Keywords ***
Create Root Variable
    [Documentation]    Creates the ROOT variable
    ${ROOT}=    Evaluate    pathlib.Path(r"${CURDIR}").parents[0]
    Set Global Variable    ${ROOT}
