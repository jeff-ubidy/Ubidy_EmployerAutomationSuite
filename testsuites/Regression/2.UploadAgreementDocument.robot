*** Settings ***
Documentation       Suite description
Test Teardown       Run Keyword If Test Failed              Capture Page Screenshot
Resource            ../../settings/Settings.robot
Resource            ../../imports/Ubidy.Resources.robot

*** Test Cases ***
Upload an agreement document
    [Tags]      inprogress
    #Wait Until Page Contains Element                    ${Menu.Documents.Link}
    lib.Ubidy.Scroll to element                         ${Menu.Profile.Link}
    #Click Element                                       ${Menu.Profile.Link}
    #Sleep                                               3s
    Mouse Over                                          ${Menu.Documents.Link}
    Focus                                               ${Menu.Documents.Link}
    Capture Page Screenshot
    Wait Until Page Contains Element                    ${Menu.Documents.Agreement.Link}
    Click Element                                       ${Menu.Documents.Agreement.Link}
    Wait Until Page Contains Element                    ${Agreement.Document.Tab}
    lib.Ubidy.Text Should Be Equal                      ${Agreement.Document.Tab}                                       Agreement Documents
    lib.Ubidy.Text Should Be Equal                      ${Agreement.Document.Upload.Top.Button}                         Upload Document
    lib.Ubidy.Text Should Be Equal                      ${Agreement.Document.Upload.Bottom.Button}                      Upload Document
    Capture Page Screenshot
    Click Element                                       ${Agreement.Document.Upload.Top.Button}
    Wait Until Page Contains Element                    ${Agreement.Document.Upload.Modal}
    Set Selenium Implicit Wait                          20
    Set Selenium Timeout                                20
    Choose File                                         ${Agreement.Document.Upload.Input.File}                         D:/Source/Repos/Ubidy_EmployerAutomationSuite/resources/prequal.pdf
    Wait Until Page Contains Element                    ${Agreement.Document.Upload.PaperClip}
    Wait Until Page Contains Element                    ${Agreement.Document.Upload.PreQual.File}
    Set Selenium Implicit Wait                          2
    Set Selenium Timeout                                2
    Input Text                                          ${Agreement.Document.Upload.Modal.DocumentName.Label}           PreQual Document
    Input Text                                          ${Agreement.Document.Upload.Modal.Description.Label}            Qualification metrics
    Click Element                                       ${Agreement.Document.Upload.Modal.DocType.Select}
    Click Element                                       ${Agreement.Document.Upload.Modal.DocType.PreQual}
#${Agreement.Document.Upload.Modal.DocType.NDA}
#${Agreement.Document.Upload.Modal.DocType.TNC}
    Click Element                                       ${Agreement.Document.Upload.Modal.RecType.Select}
#${Agreement.Document.Upload.Modal.RecType.Contract}
    Click Element                                       ${Agreement.Document.Upload.Modal.RecType.Perm}
    Click Element                                       ${Agreement.Document.Upload.Modal.RoleCat.Select}
#${Agreement.Document.Upload.Modal.RoleCat.Ex}
#${Agreement.Document.Upload.Modal.RoleCat.Prof}
    Click Element                                       ${Agreement.Document.Upload.Modal.RoleCat.Skill}
    Capture Page Screenshot
    Click Element                                       ${Agreement.Document.Upload.Save.Button}
    Wait Until Element Is Not Visible                   ${Agreement.Document.Upload.Modal}
    Capture Page Screenshot
    Wait Until Page Contains Element                    ${Agreement.Document.Upload.Table.FileImage}
    lib.Ubidy.Text Should Be Equal                      ${Agreement.Document.Upload.Table.DocName}                      PreQual Document
    lib.Ubidy.Text Should Be Equal                      ${Agreement.Document.Upload.Table.RecType}                      Perm Placement
    lib.Ubidy.Text Should Be Equal                      ${Agreement.Document.Upload.Table.RoleCat}                      Skilled
    lib.Ubidy.Text Should Be Equal                      ${Agreement.Document.Upload.Table.DocType}                      Prequalification Requirements
    ${date} =	                                        Get Current Date                                                result_format=%m-%d-%Y
    lib.Ubidy.Text Should Be Equal                      ${Agreement.Document.Upload.Table.Date}                         ${date}
    Set Selenium Implicit Wait                          ${Selenium.Timeout}
    Set Selenium Timeout                                ${Selenium.Timeout}