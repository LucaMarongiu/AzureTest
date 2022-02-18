*** Variables ***
${variable}    1
@{List1}    "Aldo"    "Giovanni"    "Franco"    "Giacomo"

*** Settings ***
Documentation    Simple file to test some Robot Framework
...    functionalities.

*** Keywords ***
Display a Certain Number
    [Documentation]    Print a List if element is not Franco and check variable.
    [Arguments]    ${arg2}=Default    @{aList}
    FOR    ${listElement}    IN    @{aList}
        Continue For Loop IF    ${listElement} == "Franco"
        Log    Hi, i am ${listElement}
    END
    # IF    ${arg2} == "dog"
        # LOG     I'ts a dog
    # ELSE
        # LOG     Maybe a cat
    # END  

*** Test Cases ***
firstTest
    Log    ${variable}
    ${variable}    Set Variable    10
    Log    ${variable}
    Display a Certain Number    dog   @{List1}

secondTest
    Get Length    "text"