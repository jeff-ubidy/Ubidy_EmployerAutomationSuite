*** Settings ***
Library          OperatingSystem
Library          Collections

*** Test Cases ***
Json
    Example1
    Example2

*** Keywords ***
Example1
    ${json}=    Get file    C:/Temp/json.json
    ${object}=    Evaluate    json.load(open("C:/Temp/json.json", "r"))    json
    ${framework} =    Create List    ${object[1]}
    log to console    ${\n}
    : FOR    ${item}    IN    @{framework}
    \    log to console    Array(list)....${item}

Example2
    ${json}=    Get file    C:/Temp/client_26715466.txt
    ${object}=    Evaluate    json.load(open("C:/Temp/json.json", "r"))    json
    ${framework} =    Get Dictionary Items    ${object[1]}
    : FOR    ${item}    IN    @{framework}
    \    log to console    Parsed items(dict)....${item}