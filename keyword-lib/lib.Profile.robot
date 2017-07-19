*** Keywords ***
Add LOGO with VALID file format
    [Tags]      UB-41
    #Click Element                       ${Menu.Profile.Link}
    Click Element                       ${Profile.Details.Left.Menu.Link}
    Wait Until Element Is Visible       ${Company.Logo.Button}
    #Capture Page Screenshot
    ${att}=    Get Element Attribute    ${Company.Logo.Button}@src
    Log to console                      ${att}
    Click Element                       ${Profile.Edit.Button}
    Click Element                       ${Company.Logo.Button}
    #Wait Until Page Contains            ${Profile.Logo1.Image}
    Wait Until Element Is Visible       ${Profile.Logo1.Image}
    #Capture Page Screenshot
    #Click Link                         ${Profile.Logo.Browse.Link}
    Choose File                         ${Profile.Logo.Input}                   D:/Source/Repos/Ubidy_EmployerAutomationSuite/resources/logo.jpg
    Wait Until Element Is Visible       ${Profile.Logo1.Image}
    Wait Until Element Is Visible       ${Profile.Logo.CurrentImage}
    #Click Element                      ${Profile.Logo1.Image}
    #Capture Page Screenshot
    Click Element                       ${Profile.Logo.Popup.Select.Button}
    Sleep                               3s
    Wait Until Element Is Visible       ${Company.Logo.Button}
    #Capture Page Screenshot
    ${att}=    Get Element Attribute    ${Company.Logo.Button}@src
    Log to console                      ${att}
    Should Not Be Empty                 ${att}
    ${att}=    Get Element Attribute    ${Company.Logo.Button}@style
    Log to console                      ${att}
    Should Be Equal                     ${att}                                          max-width: 150px;



Add LOGO with INVALID file format
    [Tags]      UB-41
    Click Element                           ${Profile.Details.Left.Menu.Link}
    Wait Until Element Is Visible           ${Company.Logo.Button}
    #Capture Page Screenshot
    ${attNone}=    Get Element Attribute    ${Company.Logo.Button}@src
    Log to console                          ${attNone}
    Click Element                           ${Profile.Edit.Button}
    Click Element                           ${Company.Logo.Button}
    #Wait Until Page Contains               ${Profile.Logo1.Image}
    Wait Until Element Is Visible           ${Profile.Logo1.Image}
    #Capture Page Screenshot
    #Click Link                             ${Profile.Logo.Browse.Link}
    Choose File                             ${Profile.Logo.Input}                       D:/Source/Repos/Ubidy_EmployerAutomationSuite/resources/xlogo.xml
    Wait Until Element Is Visible           ${Profile.Logo1.Image}
    Wait Until Element Is Visible           ${Profile.Logo.CurrentImage}
    Wait Until Page Contains Element        ${Profile.Logo.ErrorMsg.IncorrectFile}
    #Wait Until Element Contains             ${Profile.Logo.ErrorMsg.IncorrectFile}      You can't upload files of this type.
    #Capture Page Screenshot
    Click Element                           ${Profile.Logo.Popup.Select.Button}
    Sleep                                   3s
    Wait Until Element Is Visible           ${Company.Logo.Button}
    #Capture Page Screenshot
    ${attNone}=                             Get Element Attribute                       ${Company.Logo.Button}@src
    Log to console                          ${attNone}
    Should Be Equal                        '${attNone}'                                 'None'
    #Should Contain                          ${attNone}                                  undefined
    Click Element                           ${Profile.Cancel.Button}



Update profile information
    [Tags]      UB-41
    #Capture Page Screenshot
    Click Element                           ${Profile.Edit.Button}
    #Input Text                              ${Profile.Details.CompanyName.Text}         company name${random}
    #Input Text                              ${Profile.Details.Email.Text}               employer@mailinator.com
    Input Text                              ${Profile.Details.PhoneNo.Text}             1234567890
    #Input Text                              ${Profile.Details.Fax.Text}                 123456
    Input Text                              ${Profile.Details.Skype.Text}               skype.id
    Input Text                              ${Profile.Details.LinkedIn.Text}            linkedin.com\\mylinkedin
    Input Text                              ${Profile.Details.Twitter.Text}             twitter.com\\mytwitter
    Input Text                              ${Profile.Details.Website.Text}             http:\\\\www.mywebsite.com
    Wait Until Page Contains Element        ${Profile.Cancel.Button}
    Wait Until Page Contains Element        ${Profile.Save.Button}
    Click Element                           ${Profile.Save.Button}
    Wait Until Page Contains Element        ${Profile.Edit.Button}
    #Capture Page Screenshot



Validate entered profile details
    Click Link                              ${Profile.Details.Left.Menu.Link}
    #Capture Page Screenshot
    #${CompanyName}=                         Get Element Attribute                       ${Profile.Details.CompanyName.Text}@value
    #Log to console                          ${CompanyName}
    #Should Be Equal                        '${CompanyName}'                             'company name'
    #Textfield Value Should Be               ${Profile.Details.CompanyName.Text}         company name${random}
    #Validate element value                  ${Profile.Details.CompanyName.Text}         company name${random}
    #Validate element value                  ${Profile.Details.Email.Text}               employer@mailinator.com
    Validate element value                  ${Profile.Details.PhoneNo.Text}             1234567890
    #Validate element value                  ${Profile.Details.Fax.Text}                 123456
    Validate element value                  ${Profile.Details.Skype.Text}               skype.id
    Validate element value                  ${Profile.Details.LinkedIn.Text}            linkedin.com\\mylinkedin
    Validate element value                  ${Profile.Details.Twitter.Text}             twitter.com\\mytwitter
    Validate element value                  ${Profile.Details.Website.Text}             http:\\\\www.mywebsite.com
    #Capture Page Screenshot



Validate element value
    [Arguments]                             ${locators}                                 ${value}
    ${attValue}=                            Get Element Attribute                       ${locators}@value
    Log to console                          ${attValue}
    Should Be Equal                         '${attValue}'                               '${value}'



Update head office address
    Input Text                              ${Address.One}                              250 St. Georges Tce.
    Input Text                              ${Address.Two}                              QV1 Building
    Input Text                              ${Address.City}                             Perth
    Input Text                              ${Address.State}                            Great Southern
    #Input Text                              ${Address.Country}                          Australia
    Click Element                           ${Address.Country.Select}
    Click Element                           ${Address.Country.Select.Label}
    Input Text                              ${Address.Zip}                              6000
    Input Text                              ${Address.Phone}                            61.8.9216.4000
    Input Text                              ${Address.Email}                            employer@mailinator.com
    #Capture Page Screenshot



Update regional address
    Input Text                              ${Address.One}                              150 St. Georges Tce.
    Input Text                              ${Address.Two}                              CITI Building
    Input Text                              ${Address.City}                             Perth
    Input Text                              ${Address.State}                            Great Southern
    #Input Text                              ${Address.Country}                          Australia
    Click Element                           ${Address.Country.Select}
    Click Element                           ${Address.Country.Select.Label}
    Input Text                              ${Address.Zip}                              6000
    Input Text                              ${Address.Phone}                            61.8.9216.5000
    Input Text                              ${Address.Email}                            employer1@mailinator.com
    #Capture Page Screenshot



Update correspondence address
    Input Text                              ${Address.One}                              050 St. Georges Tce.
    Input Text                              ${Address.Two}                              Mt. View Building
    Input Text                              ${Address.City}                             Perth
    Input Text                              ${Address.State}                            Great Southern
    #Input Text                              ${Address.Country}                          Australia
    Click Element                           ${Address.Country.Select}
    Click Element                           ${Address.Country.Select.Label}
    Input Text                              ${Address.Zip}                              6000
    Input Text                              ${Address.Phone}                            61.8.9216.7000
    Input Text                              ${Address.Email}                            employer2@mailinator.com
    #Capture Page Screenshot


Add Supplier
    [Arguments]                             ${SuppName}     ${Proj}        ${Loc}       ${Type}     ${Class}        ${ProjL1}   ${ProjL2}   ${ProjL3}       ${cnt}
    Wait Until Page Contains Element        ${SuppHistory.Add.Supplier.History.Button}
    Capture Page Screenshot
    Click Element                           ${SuppHistory.Add.Supplier.History.Button}
    Wait Until Page Contains Element        ${SuppHistory.Save.Button}
    Wait Until Page Contains Element        ${SuppHistory.Cancel.Button}
    Capture Page Screenshot
    Input Text                              ${SuppHistory.Supplier.Name.Text}                   ${SuppName}
    Input Text                              ${SuppHistory.Project.Text}                         ${Proj}
    Input Text                              ${SuppHistory.Location.Text}                        ${Loc}
    #Input Text                             ${SuppHistory.Country.Text}                         Philippines
    Click Element                           ${SuppHistory.Country.Select}
    Click Element                           ${SuppHistory.Country.Select.Label}
    Click Element                           ${SuppHistory.Sector.Select}
    Click Element                           ${SuppHistory.Sector.Select.Label}
    Click Element                           ${SuppHistory.Industry.Select}
    Click Element                           ${SuppHistory.Industry.Select.Label}
    Click Element                           ${SuppHistory.Type.Select}
    Click Element                           ${SuppHistory.Type.Select.Label}
    Click Element                           ${SuppHistory.Class.Select}
    Click Element                           ${SuppHistory.Class.Select.Label}
    Capture Page Screenshot
    Click Element                           ${SuppHistory.Save.Button}
    Sleep   2s
    Wait Until Page Contains Element        ${SuppHistory.Panel}[${cnt}]${SuppHistory.Tag.Type.Label}
    Wait Until Page Contains Element        ${SuppHistory.Panel}[${cnt}]${SuppHistory.Tag.Class.Label}
    lib.Ubidy.Text Should Be Equal          ${SuppHistory.Panel}[${cnt}]${SuppHistory.Tag.Type.Label}                       ${Type}
    lib.Ubidy.Text Should Be Equal          ${SuppHistory.Panel}[${cnt}]${SuppHistory.Tag.Class.Label}                      ${Class}
    lib.Ubidy.Text Should Be Equal          ${SuppHistory.Panel}[${cnt}]${SuppHistory.Project.Line1}                        ${ProjL1}
    lib.Ubidy.Text Should Be Equal          ${SuppHistory.Panel}[${cnt}]${SuppHistory.Project.Line2}                        ${ProjL2}
    lib.Ubidy.Text Should Be Equal          ${SuppHistory.Panel}[${cnt}]${SuppHistory.Project.Line3}                        ${ProjL3}
    Capture Page Screenshot