*** Settings ***
Documentation       Suite description
Suite Teardown      Ubidy.Browser.Close
Test Teardown       Run Keyword If Test Failed                      Capture Page Screenshot
Resource            ../../settings/Settings.robot
Resource            ../../imports/Ubidy.Resources.robot

*** Test Cases ***
Employer wll create a new talent request
    [Tags]      inprogress
    Set Selenium Implicit Wait          2
    Set Selenium Timeout                2
    Wait Until Page Contains Element                                ${Menu.Requirements}
    Click Element                                                   ${Menu.Requirements}
    Wait Until Page Contains Element                                ${Talent.Request.Tab}
    Capture Page Screenshot
    Click Element                                                   ${Talent.Request.Tab}
    Wait Until Page Contains Element                                ${Talent.Request.Create.TR.Button}
    Capture Page Screenshot
    Click Element                                                   ${Talent.Request.Create.TR.Button}
    Wait Until Page Contains Element                                ${Talent.Request.Create.TR.Modal}
    Wait Until Page Contains Element                                ${Talent.Request.Create.Project.Name.Select}
    Capture Page Screenshot
    Click Element                                                   ${Talent.Request.Create.Project.Name.Select}
    Wait Until Page Contains Element                                ${Talent.Request.Create.Project.Name.Label}
    Capture Page Screenshot
    Click Element                                                   ${Talent.Request.Create.Project.Name.Label}
    Click Element                                                   ${Talent.Request.Create.Rec.Type.Select}
    Wait Until Page Contains Element                                ${Talent.Request.Create.Rec.Type.Label}
    Capture Page Screenshot
    Click Element                                                   ${Talent.Request.Create.Rec.Type.Label}
