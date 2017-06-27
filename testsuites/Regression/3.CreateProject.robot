*** Settings ***
Documentation       Suite description
Suite Teardown      Ubidy.Browser.Close
Test Teardown       Run Keyword If Test Failed              Capture Page Screenshot
Resource            ../../settings/Settings.robot
Resource            ../../imports/Ubidy.Resources.robot

*** Test Cases ***
Employer wll create a new project
    [Tags]      skip
    Set Selenium Implicit Wait          2
    Set Selenium Timeout                2
    Wait Until Page Contains Element                    ${Menu.Requirements}
    Click Element                                       ${Menu.Requirements}
    #----- CREATE NEW PROJECT -------
    Log to console                      ${\n}
    Log to console                      ----- CREATE NEW PROJECT -------
    Click Element                                       ${Projects.Create.Button}
    Fillup project information                          Project X       Ref101          Philippines
    Validate project created                            Project X       Construction    Buildings       Europe      Albania     Philippines
    #----- DELETE CREATED PROJECT -------
    Log to console                      ${\n}
    Log to console                      ----- DELETE CREATED PROJECT -------
    Wait Until Page Contains Element                    ${Projects.Table.Delete.Button}
    Click Element                                       ${Projects.Table.Delete.Button}
    Wait Until Page Contains Element                    ${Projects.Table.Delete.Modal}
    Capture Page Screenshot
    Click Element                                       ${Projects.Table.Delete.Modal.Confirm.Button}
    Wait Until Element Is Not Visible                   ${Projects.Table.Delete.Modal}
    Wait Until Element Is Not Visible                   ${Projects.Table.Delete.Button}
    Wait Until Page Contains Element                    ${Projects.Table.No.Data}
    Capture Page Screenshot
    #----- CREATE NEW PROJECT AGAIN-------
    Log to console                      ${\n}
    Log to console                      ----- CREATE NEW PROJECT AGAIN -------
    Click Element                                       ${Projects.Create.Button}
    Fillup project information                          Project X       Ref101          Philippines
    Validate project created                            Project X       Construction    Buildings       Europe      Albania     Philippines
    #----- MODIFY PROJECT ----------------
    Log to console                      ${\n}
    Log to console                      ----- MODIFY PROJECT -------
    Click Element                                       ${Projects.Table.Edit.Button}
    Update project information                          Project Z       Ref123          Australia
    Validate project created                            Project Z       Construction    Buildings       Europe      Albania     Australia
    #----- ARCHIVE PROJECT ---------------
    Wait Until Page Contains Element                    ${Projects.Table.Archive.Button}
    Capture Page Screenshot
    Click Element                                       ${Projects.Table.Archive.Button}
    Wait Until Page Contains Element                    ${Projects.Archive.Modal}
    Wait Until Page Contains Element                    ${Projects.Archive.Confirm}
    Capture Page Screenshot
    Click Element                                       ${Projects.Archive.Confirm}
    Wait Until Element Is Not Visible                   ${Projects.Archive.Modal}
    Wait Until Element Is Not Visible                   ${Projects.Table}
    Wait Until Element Is Not Visible                   ${Projects.Table.Archive.Button}
    Capture Page Screenshot
    Click Element                                       ${Projects.Archive.Checkbox}
    Wait Until Page Contains Element                    ${Projects.Table}
    Wait Until Page Contains Element                    ${Projects.Table.Unarchive.Button}
    #----- UN-ARCHIVE PROJECT ---------------
    Click Element                                       ${Projects.Table.Unarchive.Button}
    Wait Until Page Contains Element                    ${Projects.Archive.Modal}
    Wait Until Page Contains Element                    ${Projects.Archive.Confirm}
    Capture Page Screenshot
    Click Element                                       ${Projects.Archive.Confirm}
    Wait Until Element Is Not Visible                   ${Projects.Table}
    Capture Page Screenshot
    Click Element                                       ${Projects.Archive.Checkbox}
    Wait Until Page Contains Element                    ${Projects.Table}
    Capture Page Screenshot
    Validate project created                            Project Z       Construction    Buildings       Europe      Albania     Australia
    Set Selenium Implicit Wait                          ${Selenium.Timeout}
    Set Selenium Timeout                                ${Selenium.Timeout}


*** Keywords ***
Fillup project information
    [Arguments]                                         ${projName}     ${refID}    ${location}
    Wait Until Page Contains Element                    ${Projects.Create.Modal}
    Input Text                                          ${Projects.Create.Project.Name.Text}                    ${projName}
    Input Text                                          ${Projects.Create.Ref.ID.Text}                          ${refID}
    Click Element                                       ${Projects.Create.Sector.Select}
    Wait Until Page Contains Element                    ${Projects.Create.Sector.Select.Label}
    Click Element                                       ${Projects.Create.Sector.Select.Label}
    Click Element                                       ${Projects.Create.Industry.Select}
    Wait Until Page Contains Element                    ${Projects.Create.Industry.Select.Label}
    Click Element                                       ${Projects.Create.Industry.Select.Label}
    Click Element                                       ${Projects.Create.Region.Select}
    Wait Until Page Contains Element                    ${Projects.Create.Region.Select.Label}
    Click Element                                       ${Projects.Create.Region.Select.Label}
    Click Element                                       ${Projects.Create.Country.Select}
    Wait Until Page Contains Element                    ${Projects.Create.Country.Select.Label}
    Click Element                                       ${Projects.Create.Country.Select.Label}
    Input Text                                          ${Projects.Create.Location}                             ${location}
    Capture Page Screenshot
    Click Element                                       ${Projects.Save.Button}
    Wait Until Element Is Not Visible                   ${Projects.Create.Modal}



Update project information
    [Arguments]                                         ${projName}     ${refID}    ${location}
    Wait Until Page Contains Element                    ${Projects.Create.Modal}
    Input Text                                          ${Projects.Create.Project.Name.Text}                    ${projName}
    Input Text                                          ${Projects.Create.Ref.ID.Text}                          ${refID}
    Input Text                                          ${Projects.Create.Location}                             ${location}
    Capture Page Screenshot
    Click Element                                       ${Projects.Save.Button}
    Wait Until Element Is Not Visible                   ${Projects.Create.Modal}



Validate project created
    [Arguments]                                         ${projName}    ${sector}    ${industry}    ${region}    ${country}    ${location}
    lib.Ubidy.Text Should Be Equal                      ${Projects.Table.ProjName.Label}                        ${projName}
    lib.Ubidy.Text Should Be Equal                      ${Projects.Table.Sector.Label}                          ${sector}
    lib.Ubidy.Text Should Be Equal                      ${Projects.Table.Industry.Label}                        ${industry}
    lib.Ubidy.Text Should Be Equal                      ${Projects.Table.Region.Label}                          ${region}
    lib.Ubidy.Text Should Be Equal                      ${Projects.Table.Country.Label}                         ${country}
    lib.Ubidy.Text Should Be Equal                      ${Projects.Table.Location.Label}                        ${location}
    Capture Page Screenshot