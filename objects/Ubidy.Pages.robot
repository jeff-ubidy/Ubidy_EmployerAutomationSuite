*** Settings ***
Documentation    Defines all required resources and keywords
...              handling the google search.
Resource         ../adapters/Selenium2Library.robot


*** Variables ***

#LOGIN PAGE
${Login.Username.Text}                  id=userName
${Login.Password.Text}                  id=password
${Login.Button}                         //*[@class="ant-btn ant-btn-primary ant-btn-lg login-form-button"]
${Agency.Username}                      testagency
${Employer.Username}                    employee_FigNGyOm
${Register.Link}                        //*[@href="/Register"]



#REGISTRATION PAGE
${Registration.CompanyName.Text}        id=companyName
${Registration.FirstName.Text}          id=firstName
${Registration.LastName.Text}           id=lastName
${Registration.Email.Text}              id=email
${Registration.IAgree.Checkbox}         //*[@class="ant-checkbox-input"]
${Registration.Submit.Button}           //*[@type="submit"]
${Registration.No.Button}               //*[@class="ant-modal-footer"]/button[1]
${Registration.Yes.Button}              //*[@class="ant-modal-footer"]/button[2]
${Registration.UserName.Label}          //*[@class="information-preview"]/p[1]
${Registration.EmployerName.Label}      //*[@class="information-preview"]/p[2]
${Registration.FirstName.Label}         //*[@class="information-preview"]/p[3]
${Registration.LastName.Label}          //*[@class="information-preview"]/p[4]
${Registration.Email.Label}             //*[@class="information-preview"]/p[5]
${Registration.Alert.Message}           //*[@class="ant-alert-message"]




#MENUS
${Menu.Profile.Link}                    //*[@href="/profile"]




#PROFILE > Details
${Company.Logo.Button}                                  //*[@alt="Company Logo"]
${Profile.Logo.Browse.Link}                             id=dzclickprofilepicture
${Profile.Logo.Popup.Select.Button}                     //*[@class="ant-btn ant-btn-primary ant-btn-lg"]
${Profile.Logo1.Image}                                  //*[@alt="Sample Company Logo 1"]
${Profile.Logo.Input}                                   //*[@class="dz-hidden-input"]
${Profile.Logo.CurrentImage}                            //*[@class="current-img"]
${Profile.Logo.ErrorMsg.IncorrectFile}                  //*[@class="dz-error-message"]
${Profile.Details.CompanyName.Text}                     id=companyName
${Profile.Details.Email.Text}                           id=email
${Profile.Details.PhoneNo.Text}                         id=phoneNo
${Profile.Details.Fax.Text}                             id=fax
${Profile.Details.Skype.Text}                           id=skype
${Profile.Details.LinkedIn.Text}                        id=linkedIn
${Profile.Details.Twitter.Text}                         id=twitter
${Profile.Details.Website.Text}                         id=website
${Profile.Details.Save.Button}                          //*[@type="submit"]
${Profile.Edit.Button}                                  //*[@type="button"]/span[text()='Edit']
${Profile.Delete.Button}                                //*[@type="button"]/span[text()='Delete']
${Profile.Continue.Button}                              //*[@type="button"]/span[text()[contains(.,'Continue')]]
${Profile.Cancel.Button}                                //*[@type="button"]/span[text()[contains(.,'Cancel')]]
${Profile.Save.Button}                                  //*[@type="submit"]/span[text()[contains(.,'Save Changes')]]
#${Profile.AddOffice.Button}                            //*[@type="button"]/span[text()[contains(.,'Add Office Address')]]
${Profile.AddOffice.Button}                             //button[contains(.,'Add Office Address')]
${Profile.Details.Left.Menu.Link}                       //li[@class="ant-menu-item"]/a[text()[contains(.,"Profile Details")]]
${Addresses.Left.Menu.Link}                             //li[@class="ant-menu-item"]/a[text()[contains(.,"Addresses")]]



#COMPANY BIO
${Company.Bio.Left.Menu.Link}                           //li[@class="ant-menu-item"]/a[text()[contains(.,"Company Bio")]]
#${Company.Bio.Text}                                    //div[@class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"]/span
${Company.Bio.Text}                                     //div[@class="public-DraftStyleDefault-block public-DraftStyleDefault-ltr"]





#ADDRESS
${Address.One}                                          id=address1
${Address.Two}                                          id=address2
${Address.City}                                         id=city
${Address.State}                                        id=state
${Address.Country}                                      //input[@class="ant-input ant-input ant-select-search__field"]
${Address.Zip}                                          id=zip
${Address.Phone}                                        id=phone
${Address.Email}                                        id=email
${Address.Edit.Button}                                  //*[@type="button"]/span[text()='Edit']
${Address.Save.Button}                                  //*[@type="submit"]/span[text()[contains(.,'Save Changes')]]
${Address.Head.Office.Label}                            //div[@class="ant-card profile-address-box head-office ant-card-bordered"]/div[1]/p[1]
${Address.Head.Office.Phone.Label}                      //div[@class="ant-card profile-address-box head-office ant-card-bordered"]/div[1]/p[2]
${Address.Head.Office.Email.Label}                      //div[@class="ant-card profile-address-box head-office ant-card-bordered"]/div[1]/p[3]
${Address.Regional.Office.Label}                        //div[@class="ant-card profile-address-box ant-card-bordered"]/div[1]/p[1]
${Address.Regional.Office.Phone.Label}                  //div[@class="ant-card profile-address-box ant-card-bordered"]/div[1]/p[2]
${Address.Regional.Office.Email.Label}                  //div[@class="ant-card profile-address-box ant-card-bordered"]/div[1]/p[3]
${Address.Correspondence.Office.Label}                  //div[@class="ant-card profile-address-box ant-card-bordered"][2]/div/p[1]
${Address.Correspondence.Office.Phone.Label}            //div[@class="ant-card profile-address-box ant-card-bordered"][2]/div/p[2]
${Address.Correspondence.Office.Email.Label}            //div[@class="ant-card profile-address-box ant-card-bordered"][2]/div/p[3]
${Address.Type}                                         //div[@class="ant-row ant-form-item"]//div[@class="ant-select-selection__rendered"][1]
${Address.Type.Regional}                                //li[@class="ant-select-dropdown-menu-item"]
${Address.Type.Correspondence}                          //li[@class="ant-select-dropdown-menu-item"]




#REGIONS
${Regions.Region.Select}                                //div[@class="ant-col-md-8"]/div
${Regions.Region.Select1.Label}                         //li[@class="ant-select-dropdown-menu-item"][text()='North America']
${Regions.Region.Select2.Label}                         //li[@class="ant-select-dropdown-menu-item"][text()='Europe']
${Regions.Country.Select}                               //div[@class="ant-col-md-10"]/div
${Regions.Country.Select1.Label}                        //li[@class="ant-select-dropdown-menu-item"][text()="United States"]
${Regions.Country.Select2.Label}                        //li[@class="ant-select-dropdown-menu-item"][text()="Albania"]
${Regions.Add.Region.Button}                            //button[contains(.,'Add Region')]
${Regions.Table.FirstRow_1.Label}                       //tbody[@class="ant-table-tbody"]/tr/td[1][text()="North America"]
${Regions.Table.FirstRow_2.Label}                       //tbody[@class="ant-table-tbody"]/tr/td[2][text()="United States"]
${Regions.Table.SecondRow_1.Label}                      //tbody[@class="ant-table-tbody"]/tr/td[1][text()="Europe"]
${Regions.Table.SecondRow_2.Label}                      //tbody[@class="ant-table-tbody"]/tr/td[2][text()="Albania"]


#INDUSTRIES
${Industries.Sector.Select}                             //div[@class="ant-col-md-8"]/div
${Industries.Sector.Select1.Label}                      //li[@class="ant-select-dropdown-menu-item"][text()='Construction']
${Industries.Sector.Select2.Label}                      //li[@class="ant-select-dropdown-menu-item"][text()='Manufacturing']
${Industries.Industry.Select}                           //div[@class="ant-col-md-10"]/div
${Industries.Industry.Select1.Label}                    //li[@class="ant-select-dropdown-menu-item"][text()="Buildings"]
${Industries.Industry.Select2.Label}                    //li[@class="ant-select-dropdown-menu-item"][text()="Automotive"]
${Industries.Add.Industry.Button}                       //button[contains(.,'Add Industry')]
${Industries.Table.FirstRow_1.Label}                    //tbody[@class="ant-table-tbody"]/tr/td[1][text()="Construction"]
${Industries.Table.FirstRow_2.Label}                    //tbody[@class="ant-table-tbody"]/tr/td[2][text()="Buildings"]
${Industries.Table.SecondRow_1.Label}                   //tbody[@class="ant-table-tbody"]/tr/td[1][text()="Manufacturing"]
${Industries.Table.SecondRow_2.Label}                   //tbody[@class="ant-table-tbody"]/tr/td[2][text()="Automotive"]



#SUPPLIER HISTORY
${SuppHistory.Add.Supplier.History.Button}              //button[contains(.,'Add Supplier History')]
${SuppHistory.Supplier.Name.Text}                       id=supplier
${SuppHistory.Project.Text}                             id=project
${SuppHistory.Location.Text}                            id=location
${SuppHistory.Country.Text}                             //div[@class="ant-select-search__field__wrap"]/input[@type="text"]
${SuppHistory.Sector.Select}                            //div[@title="-- Select Sector --"]
${SuppHistory.Sector.Select.Label}                      //li[@class="ant-select-dropdown-menu-item"][text()='Construction']
${SuppHistory.Industry.Select}                          //div[@title="-- Select Industry --"]
${SuppHistory.Industry.Select.Label}                    //li[@class="ant-select-dropdown-menu-item"][text()='Buildings']
${SuppHistory.Type.Select}                              //div[@title="Perm Placement"]
${SuppHistory.Type.Select.Label}                        //li[@class="ant-select-dropdown-menu-item"][text()='Perm Placement']
${SuppHistory.Class.Select}                             //div[@title="Skilled"]
${SuppHistory.Class.Select.Label}                       //li[@class="ant-select-dropdown-menu-item"][text()='Skilled']
${SuppHistory.Save.Button}                              //*[@type="submit"]/span[text()[contains(.,'Save Changes')]]
${SuppHistory.Cancel.Button}                            //*[@type="button"]/span[text()[contains(.,'Cancel')]]
${SuppHistory.Tag.Type.Label}                           //div[@class="ant-tag ant-tag-has-color"][1]
${SuppHistory.Tag.Class.Label}                          //div[@class="ant-tag ant-tag-has-color"][2]
${SuppHistory.Project.Line1}                            //div[@class="ant-card-body"]/p[1]
${SuppHistory.Project.Line2}                            //div[@class="ant-card-body"]/p[2]
${SuppHistory.Project.Line3}                            //div[@class="ant-card-body"]/p[3]




#TESTIMONIALS
${Testimonials.Fullname.Text}                           id=fullName
${Testimonials.Company.Text}                            id=company
${Testimonials.Email.Text}                              id=email
${Testimonials.Send.Invitation.Button}                  //*[@type="submit"]/span[text()[contains(.,'Send Invitation')]]
${Testimonials.Table.Name}                              //tbody[@class="ant-table-tbody"]/tr/td[1][text()="John Smith"]
${Testimonials.Table.Company}                           //tbody[@class="ant-table-tbody"]/tr/td[2][text()="Metal Corporation"]
${Testimonials.Table.Email}                             //tbody[@class="ant-table-tbody"]/tr/td[3][text()="testemployer@mailinator.com"]
${Testimonials.Table.Sent}                              //tbody[@class="ant-table-tbody"]/tr/td[4]
${Testimonials.Table.Action}                            //tbody[@class="ant-table-tbody"]/tr/td[5]/span/a[text()="Cancel"]



#PROFILE PREVIEW
${Profile.Preview.Logo}                                 //*[@class="profile-image"]
${Profile.Preview.Company.Name.Label}                   //div[@class="ant-col-19 profile-info"]/p[1]
${Profile.Preview.Address1.Label}                       //div[@class="ant-col-19 profile-info"]/p[2]
${Profile.Preview.Address2.Label}                       //div[@class="ant-col-19 profile-info"]/p[3]
${Profile.Preview.Email.Label}                          //div[@class="ant-col-19 profile-info"]/p[4]
${Profile.Preview.Phone.Label}                          //div[@class="ant-col-19 profile-info"]/p[5]
${Profile.Preview.Fax.Label}                            //div[@class="ant-col-19 profile-info"]/p[6]
${Profile.Preview.AboutUs.Region.Label}                 //div[@class="ant-col-8 address"][1]//h3[@class="ant-card-head-title"]
${Profile.Preview.AboutUs.Correspondence.Label}         //div[@class="ant-col-8 address"][2]//h3[@class="ant-card-head-title"]
${Profile.Preview.AboutUs.Region.Address.Label}         //div[@class="ant-col-8 address"][1]//div[@class="ant-card-body"]/p/span
${Profile.Preview.AboutUs.Region.Email.Label}           //div[@class="ant-col-8 address"][1]//div[@class="ant-card-body"]/p[2]
${Profile.Preview.AboutUs.Region.Phone.Label}           //div[@class="ant-col-8 address"][1]//div[@class="ant-card-body"]/p[3]
${Profile.Preview.AboutUs.Correspondence.Address.Label}         //div[@class="ant-col-8 address"][2]//div[@class="ant-card-body"]/p/span
${Profile.Preview.AboutUs.Correspondence.Email.Label}           //div[@class="ant-col-8 address"][2]//div[@class="ant-card-body"]/p[2]
${Profile.Preview.AboutUs.Correspondence.Phone.Label}           //div[@class="ant-col-8 address"][2]//div[@class="ant-card-body"]/p[3]
${Profile.Preview.Region.Row1}                          //div[@class="ant-row region-industry"]/div[1]/p
${Profile.Preview.Region.Row2}                          //div[@class="ant-row region-industry"]/div[1]/ul/li[1]
${Profile.Preview.Region.Row3}                          //div[@class="ant-row region-industry"]/div[1]/ul/li[2]
${Profile.Preview.Industry.Row1}                        //div[@class="ant-row region-industry"]/div[2]/p
${Profile.Preview.Industry.Row2}                        //div[@class="ant-row region-industry"]/div[2]/ul/li[1]
${Profile.Preview.Industry.Row3}                        //div[@class="ant-row region-industry"]/div[2]/ul/li[2]
${Profile.Preview.ProjSupp.Label}                       //div[@class="ant-row project"]/div/div
${Profile.Preview.ProjSupp.Add.Label}                   //div[@class="ant-row project"]/div/div[2]
${Profile.Preview.Testimonial.Label}                    //div[@class="ant-row testimony"]/div[2]/p[2]

*** Keywords ***
Login To UBIDY
    [Arguments]     ${USER}
    Ubidy.Browser.Open      ${USER}
    Run Keyword If    '${USER}'=='employer'         Input Text          ${Login.Username.Text}    ${Employer.Username}
    Run Keyword If    '${USER}'=='agency'           Input Text          ${Login.Username.Text}    ${Agency.Username}
    #Input Text          ${Login.Username.Text}    testagency
    Input Password      ${Login.Password.Text}    ubidy123
    Capture Page Screenshot
    Click Element    ${Login.Button}
    #Wait Until Page Contains Element    ${marketData.leftmenu.wealth.tools}





#*** Keywords ***
#Login With Empty Username And Password Should Fail
#    Capture Page Screenshot
#    Click Element    ${ClientPortal.Login.Button}
#    Wait Until Page Contains    the password you have entered is incorrect
#    Capture Page Screenshot

#Login With Invalid Username And Invalid Password Should Fail
#    ClientPortal.Site.Init
#    Input Text    ${ClientPortal.Login.UserIdField}    00000
#    Input Password    ${ClientPortal.Login.PasswordField}    invalidpass
#    Capture Page Screenshot
#    Click Element    ${ClientPortal.Login.Button}
#    Wait Until Page Contains    the password you have entered is incorrect
#    Capture Page Screenshot