*** Settings ***
Suite Teardown      Ubidy.Browser.Close
Test Teardown       Run Keyword If Test Failed              Capture Page Screenshot
Resource            ../../settings/Settings.robot
Resource            ../../imports/Ubidy.Resources.robot

*** Variables ***
${USER}                 employer
${random}	            kVrgyuoi


*** Test Cases ***
Create Account as Employer
    [Tags]      skip
    Register new employer
    #Ubidy.Pages.Login To UBIDY                              employer
    #Create Profile Details
    #Validate entered profile details
    #Create Company Bio
    #Create address
    #Create regions
    #Create industries
    #Create supplier history
    #Create testimonials

Create profile details
    [Tags]      skip
    Add details in Profile
    #Validate entered profile details

Create profile office address
    [Tags]      skip
    Create address

Create profile region
    [Tags]      skip
    Create regions

Create profile industry
    [Tags]      skip
    Create industries

Create profile supplier history
    [Tags]      skip
    Create supplier history

Create profile testimonials
    [Tags]      skip
    Create testimonials

Validate profile preview
    [Tags]      skip
    Profile preview

#Create Account as Agency
    #Create agency account


*** Keywords ***
Register new employer
    #Ubidy.Pages.Login To UBIDY
    ${random.username} =	            Generate Random String
    Log to console                      ${random.username}
    Ubidy.Browser.Open                  ${USER}
    Click Link                          ${Register.Link}
    Input Text                          ${Login.Username.Text}                      employee_${random.username}
    Input Text                          ${Registration.CompanyName.Text}            employee_${random.username}
    Input Text                          ${Registration.FirstName.Text}              employee_${random.username}
    Input Text                          ${Registration.LastName.Text}               employee_${random.username}
    Input Text                          ${Registration.Email.Text}                  employee_${random.username}@ubidy.com
    Input Text                          ${Login.Password.Text}                      ubidy123
    Click Element                       ${Registration.IAgree.Checkbox}
    Capture Page Screenshot
    Click Element                       ${Registration.Submit.Button}
    Wait Until Element Is Visible       ${Registration.No.Button}
    Element Should Contain              ${Registration.UserName.Label}              Username: employee_${random.username}
    Element Should Contain              ${Registration.EmployerName.Label}          Employer Name: employee_${random.username}
    Element Should Contain              ${Registration.FirstName.Label}             First Name: employee_${random.username}
    Element Should Contain              ${Registration.LastName.Label}              Last Name: employee_${random.username}
    Element Should Contain              ${Registration.Email.Label}                 Email: employee_${random.username}@ubidy.com
    Element Should Contain              ${Registration.Alert.Message}               Are you sure you want to register with these information?
    Wait Until Element Is Visible       ${Registration.Yes.Button}
    Element Should Be Enabled           ${Registration.No.Button}
    Element Should Be Enabled           ${Registration.Yes.Button}
    Capture Page Screenshot
    Click Element                       ${Registration.Yes.Button}
#   ${isPresent} =                      Run Keyword And Return Status               Element Should Be Visible                                           //*[@class="ant-message-notice"]
#   Run Keyword If                      ${isPresent}                                Log to console                                                      employee_${random.username} is already exists.
#   Log to console                      ${isPresent}
    Set Selenium Implicit Wait          ${Selenium.Timeout}
    Set Selenium Timeout                ${Selenium.Timeout}
    Capture Page Screenshot
    #Ubidy.Browser.Close


Add details in Profile
    Sleep   2s
    Wait Until Page Contains Element                                                ${Profile.Edit.Button}
    Wait Until Page Contains Element                                                ${Profile.Continue.Button}
    lib.Profile.Update profile information
    #lib.Profile.Add LOGO with VALID file format
    #lib.Profile.Add LOGO with INVALID file format



Create Company Bio
    Click Element                       ${Company.Bio.Left.Menu.Link}
    Wait Until Page Contains Element    ${Profile.Edit.Button}
    Wait Until Page Contains Element    ${Profile.Continue.Button}
    Click Element                       ${Profile.Edit.Button}
    Click Element                       ${Company.Bio.Text}
    Press key                           ${Company.Bio.Text}                         Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\pIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    Click Element                       ${Profile.Save.Button}
    Wait Until Page Contains Element    ${Profile.Edit.Button}
    lib.Validate element value          ${Company.Bio.Text}                         Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\pIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
    Capture Page Screenshot

Create address
    Set Selenium Implicit Wait          2
    Set Selenium Timeout                2
    Click Element                       ${Addresses.Left.Menu.Link}
    Wait Until Page Contains Element    ${Profile.Edit.Button}
    Wait Until Page Contains Element    ${Profile.AddOffice.Button}
#    Wait Until Page Contains Element    ${Profile.Delete.Button}
    Wait Until Page Contains Element    ${Profile.Continue.Button}
    #HeadOffice--------
    Log to console                      ${\n}
    Log to console                      ----------[HeadOffice]--------
    Click Element                       ${Profile.Edit.Button}
    Wait Until Page Contains Element    ${Address.Edit.Button}
    Wait Until Page Contains Element    ${Address.Save.Button}
    lib.Profile.Update head office address
    Click Element                       ${Address.Save.Button}
    Capture Page Screenshot
    Wait Until Element Is Not Visible   ${Address.Save.Button}
    Wait Until Page Contains Element    ${Profile.AddOffice.Button}
    Capture Page Screenshot
    lib.Ubidy.Text Should Be Equal      ${Address.Head.Office.Label}                Address: 250 St. Georges Tce. QV1 Building Perth, Great Southern Albania 6000
    lib.Ubidy.Text Should Be Equal      ${Address.Head.Office.Phone.Label}          Phone: 61.8.9216.4000
    lib.Ubidy.Text Should Be Equal      ${Address.Head.Office.Email.Label}          Email: employer@mailinator.com
    #RegionalOffice------
    Log to console                      ${\n}
    Log to console                      ----------[RegionalOffice]--------
    Click Element                       ${Profile.AddOffice.Button}
    Wait Until Page Contains Element    ${Address.Edit.Button}
    Wait Until Page Contains Element    ${Address.Save.Button}
    #Click Element                      ${Address.Type}
    #Click Element                       ${Address.Type.Correspondence}
    lib.Profile.Update regional address
    Click Element                       ${Address.Save.Button}
    Capture Page Screenshot
    Wait Until Element Is Not Visible   ${Address.Save.Button}
    Wait Until Page Contains Element    ${Profile.AddOffice.Button}
    Capture Page Screenshot
    lib.Ubidy.Text Should Be Equal      ${Address.Regional.Office.Label}            Address: 150 St. Georges Tce. CITI Building Perth, Great Southern Albania 6000
    lib.Ubidy.Text Should Be Equal      ${Address.Regional.Office.Phone.Label}      Phone: 61.8.9216.5000
    lib.Ubidy.Text Should Be Equal      ${Address.Regional.Office.Email.Label}      Email: employer1@mailinator.com
    #Correspondence----------
    Log to console                      ${\n}
    Log to console                      ----------[CorrespondenceOffice]--------
    Click Element                       ${Profile.AddOffice.Button}
    Sleep   2s
    Wait Until Page Contains Element    ${Address.Edit.Button}
    Wait Until Page Contains Element    ${Address.Save.Button}
    Click Element                       ${Address.Type}
    Wait Until Page Contains Element    ${Address.Type.Correspondence}
    Wait Until Element Is Visible       ${Address.Type.Correspondence}
    Click Element                       ${Address.Type.Correspondence}
    lib.Profile.Update correspondence address
    Capture Page Screenshot
    Click Element                       ${Address.Save.Button}
    Capture Page Screenshot
    Wait Until Element Is Not Visible   ${Address.Save.Button}
    Wait Until Page Contains Element    ${Profile.AddOffice.Button}
    Capture Page Screenshot
    lib.Ubidy.Text Should Be Equal      ${Address.Correspondence.Office.Label}          Address: 050 St. Georges Tce. Mt. View Building Perth, Great Southern Albania 6000
    lib.Ubidy.Text Should Be Equal      ${Address.Correspondence.Office.Phone.Label}    Phone: 61.8.9216.7000
    lib.Ubidy.Text Should Be Equal      ${Address.Correspondence.Office.Email.Label}    Email: employer2@mailinator.com
    Set Selenium Implicit Wait          ${Selenium.Timeout}
    Set Selenium Timeout                ${Selenium.Timeout}



Create regions
    Set Selenium Implicit Wait          10
    Set Selenium Timeout                10
    Click Element                       ${Profile.Continue.Button}
    #Click Element                       ${Regions.Left.Menu.Link}
    Wait Until Page Contains Element    ${Regions.Region.Select}
    #Reload Page
    #sleep       120s
    Focus                               ${Regions.Region.Select}
    Click Element                       ${Regions.Region.Select}
    Capture Page Screenshot
    Wait Until Page Contains Element    ${Regions.Region.Select1.Label}
    Click Element                       ${Regions.Region.Select1.Label}
    #Execute Javascript                  document.querySelector("div.ant-select-selection-selected-value").click();
    Click Element                       ${Regions.Country.Select}
    Wait Until Element Is Enabled       ${Regions.Country.Select1.Label}
    Wait Until Page Contains Element    ${Regions.Country.Select1.Label}
    Capture Page Screenshot
    Click Element                       ${Regions.Country.Select1.Label}
    Sleep   1s
    Wait Until Element Is Enabled       ${Regions.Add.Region.Button}
    Click Element                       ${Regions.Add.Region.Button}
    Click Element                       ${Regions.Region2.Select}
    Capture Page Screenshot
    Click Element                       ${Regions.Region.Select2.Label}
    Wait Until Page Contains Element    ${Regions.Country.Select}
    Click Element                       ${Regions.Country.Select}
    Capture Page Screenshot
    Click Element                       ${Regions.Country.Select2.Label}
    Sleep   1s
    Wait Until Element Is Enabled       ${Regions.Add.Region.Button}
    Click Element                       ${Regions.Add.Region.Button}
    Sleep   1s
    lib.Ubidy.Text Should Be Equal      ${Regions.Table.FirstRow_1.Label}               North America
    lib.Ubidy.Text Should Be Equal      ${Regions.Table.FirstRow_2.Label}               United States
    lib.Ubidy.Text Should Be Equal      ${Regions.Table.SecondRow_1.Label}              Europe
    lib.Ubidy.Text Should Be Equal      ${Regions.Table.SecondRow_2.Label}              Albania
    Capture Page Screenshot
    Set Selenium Implicit Wait          ${Selenium.Timeout}
    Set Selenium Timeout                ${Selenium.Timeout}

Create industries
    Set Selenium Implicit Wait          10
    Set Selenium Timeout                10
    Click Element                       ${Profile.Continue.Button}
    #Click Element   //li[@class="ant-menu-item"]/a[text()[contains(.,"Industries")]]
    Wait Until Page Contains Element    ${Industries.Sector.Select}
    Focus                               ${Industries.Sector.Select}
    Click Element                       ${Industries.Sector.Select}
    Wait Until Page Contains Element    ${Industries.Sector.Select1.Label}
    Capture Page Screenshot
    Click Element                       ${Industries.Sector.Select1.Label}
    Click Element                       ${Industries.Industry.Select}
    Wait Until Page Contains Element    ${Industries.Industry.Select1.Label}
    Click Element                       ${Industries.Industry.Select1.Label}
    Sleep   1s
    Wait Until Element Is Enabled       ${Industries.Add.Industry.Button}
    Click Element                       ${Industries.Add.Industry.Button}
    Click Element                       ${Industries.Sector2.Select}
    Wait Until Page Contains Element    ${Industries.Sector.Select2.Label}
    Capture Page Screenshot
    Click Element                       ${Industries.Sector.Select2.Label}
    Click Element                       ${Industries.Industry.Select}
    Wait Until Page Contains Element    ${Industries.Industry.Select2.Label}
    Capture Page Screenshot
    Click Element                       ${Industries.Industry.Select2.Label}
    Sleep   1s
    Wait Until Element Is Enabled       ${Industries.Add.Industry.Button}
    Click Element                       ${Industries.Add.Industry.Button}
    lib.Ubidy.Text Should Be Equal      ${Industries.Table.FirstRow_1.Label}               Construction
    lib.Ubidy.Text Should Be Equal      ${Industries.Table.FirstRow_2.Label}               Buildings
    lib.Ubidy.Text Should Be Equal      ${Industries.Table.SecondRow_1.Label}              Manufacturing
    lib.Ubidy.Text Should Be Equal      ${Industries.Table.SecondRow_2.Label}              Automotive
    Capture Page Screenshot
    Set Selenium Implicit Wait          ${Selenium.Timeout}
    Set Selenium Timeout                ${Selenium.Timeout}

Create supplier history
    Set Selenium Implicit Wait          2
    Set Selenium Timeout                2
    Click Element                       ${Profile.Continue.Button}
    #Click Element   //li[@class="ant-menu-item"]/a[text()[contains(.,"Supplier History")]]
    Add Supplier                        Shell       Project Malampaya        Mindanao       Perm Placement     Skilled/Semi-Skilled        Shell - Project Malampaya        Mindanao , Algeria, Middle East     Construction | Buildings    1
    Add Supplier                        Chevron     Project Xcon             Luzon          Perm Placement     Skilled/Semi-Skilled        Chevron - Project Xcon           Luzon , Algeria, Middle East     Construction | Buildings      2
    Add Supplier                        Total       Project Mines            Visayas        Perm Placement     Skilled/Semi-Skilled        Total - Project Mines            Visayas , Algeria, Middle East     Construction | Buildings    3
    Set Selenium Implicit Wait          ${Selenium.Timeout}
    Set Selenium Timeout                ${Selenium.Timeout}


Create testimonials
    Set Selenium Implicit Wait          2
    Set Selenium Timeout                2
    Click Element                       ${Profile.Continue.Button}
    #Click Element   //li[@class="ant-menu-item"]/a[text()[contains(.,"Testimonials")]]
    Wait Until Page Contains Element    ${Testimonials.Send.Invitation.Button}
    Input Text                          ${Testimonials.Fullname.Text}                       John Smith
    Input Text                          ${Testimonials.Company.Text}                        Metal Corporation
    Input Text                          ${Testimonials.Email.Text}                          employer@mailinator.com
    Capture Page Screenshot
    Click Element                       ${Testimonials.Send.Invitation.Button}
    lib.Ubidy.Scroll to element         //h3[@class="sub_title"]
    lib.Ubidy.Text Should Be Equal      ${Testimonials.Table.Name}                          John Smith
    lib.Ubidy.Text Should Be Equal      ${Testimonials.Table.Company}                       Metal Corporation
    lib.Ubidy.Text Should Be Equal      ${Testimonials.Table.Email}                         employer@mailinator.com
    lib.Ubidy.Text Should Be Equal      ${Testimonials.Table.Action}                        Cancel
    ${date} =	                        Get Current Date                                    result_format=%m/%d/%Y
    lib.Ubidy.Text Should Be Equal      ${Testimonials.Table.Sent}                          ${date}
    Capture Page Screenshot
    Set Selenium Implicit Wait          ${Selenium.Timeout}
    Set Selenium Timeout                ${Selenium.Timeout}


Profile preview
    #Set Selenium Implicit Wait          2
    #Set Selenium Timeout                2
    Click Element                       ${Profile.Continue.Button}
    #Click Element       //li[@class="ant-menu-item"]/a[text()[contains(.,"Profile Preview")]]
    Wait Until Page Contains Element    ${Profile.Preview.Logo}
    Wait Until Page Contains Element    ${Profile.Preview.Company.Name.Label}
    lib.Ubidy.Scroll to element         ${Profile.Preview.Logo}
    Capture Page Screenshot
    #Wait Until Page Contains Element    ${Profile.Preview.AboutUs.Region.Label}
    #Capture Page Screenshot
    ${att}=    Get Element Attribute    ${Profile.Preview.Logo}@src
    Log to console                      ${att}
    Should Not Be Empty                 ${att}
    #lib.Ubidy.Text Should Be Equal      ${Profile.Preview.Company.Name.Label}              employee_${random.username}
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.Address1.Label}                   250 St. Georges Tce.
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.Address2.Label}                   QV1 Building
    #lib.Ubidy.Text Should Be Equal      ${Profile.Preview.Email.Label}                     employee_${random.username}@ubidy.com
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.Phone.Label}                      +1234567890
    #lib.Ubidy.Text Should Be Equal      ${Profile.Preview.Fax.Label}                       +61 333 669 9966
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.AboutUs.Region.Label}                     Regional
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.AboutUs.Region.Address.Label}             150 St. Georges Tce. CITI Building Albania Perth 6000
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.AboutUs.Region.Email.Label}               employer1@mailinator.com
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.AboutUs.Region.Phone.Label}               +61.8.9216.5000
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.AboutUs.Correspondence.Label}             Correspondence
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.AboutUs.Correspondence.Address.Label}     050 St. Georges Tce. Mt. View Building Albania Perth 6000
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.AboutUs.Correspondence.Email.Label}       employer2@mailinator.com
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.AboutUs.Correspondence.Phone.Label}       +61.8.9216.7000
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.Region.Row1}                              Regions
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.Region.Row2}                              North America - United States
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.Region.Row3}                              Europe - Albania
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.Industry.Row1}                            Industries
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.Industry.Row2}                            Buildings - Construction
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.Industry.Row3}                            Automotive - Manufacturing
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.ProjSupp.Label}                           Project Malampaya - Shell
    lib.Ubidy.Text Should Be Equal      ${Profile.Preview.ProjSupp.Add.Label}                       Algeria, Mindanao
    #lib.Ubidy.Text Should Be Equal      ${Profile.Preview.Testimonial.Label}                        employer@mailinator.com
    Capture Page Screenshot
    lib.Ubidy.Scroll to element         ${Profile.Preview.Region.Row1}
    Set Selenium Implicit Wait          ${Selenium.Timeout}
    Set Selenium Timeout                ${Selenium.Timeout}


Create agency account
    ${USER}=                            Set Variable                                agency
    #Ubidy.Browser.Open                  ${USER}

