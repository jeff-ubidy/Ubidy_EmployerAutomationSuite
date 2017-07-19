*** Settings ***
Documentation    Defines all required resources and keywords
...              handling the google search.
Resource         ../adapters/Selenium2Library.robot


*** Variables ***

#LOGIN PAGE
${Login.Username.Text}                  id=userName
${Login.Password.Text}                  id=password
${Login.Button}                         //*[@class="ant-btn ant-btn-primary ant-btn-lg login-form-button"]
${Agency.Username}                      testagency1
${Employer.Username}                    employee_IGwVH93B
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
${Menu.Documents.Link}                  //div[@aria-owns="Agreements$Menu"]
${Menu.Documents.Agreement.Link}        //ul[@id="Agreements$Menu"]/li[1]/a
${Menu.Documents.Application.Link}      //ul[@id="Agreements$Menu"]/li[2]/a
${Menu.Requirements}                    //a[@class="u-link-item"][text()="Requirements"]




#PROFILE > Details
${Company.Logo.Button}                                  //*[@alt="Company Logo"]
${Profile.Logo.Browse.Link}                             id=dzclickprofilepicture
${Profile.Logo.Popup.Select.Button}                     //*[@class="ant-btn ant-btn-primary ant-btn-lg"]
${Profile.Logo1.Image}                                  //*[@alt="Sample Company Logo 1"]
#${Profile.Logo.Input}                                   //*[@class="dz-hidden-input"]
${Profile.Logo.Input}                                   //input[@type="file"]
${Profile.Logo.CurrentImage}                            //*[@class="current-img"]
${Profile.Logo.ErrorMsg.IncorrectFile}                  //div[@class="ant-upload-list-item ant-upload-list-item-error"]
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
${Address.Country.Select}                               //div[@title="Please Select"]
${Address.Country.Select.Label}                         //li[@class="ant-select-dropdown-menu-item"][text()='Albania']
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
#${Regions.Region.Select}                               //div[@class="ant-col-md-8"]/div
${Regions.Region.Select}                                //div[@title="-- Select Region --"]
${Regions.Region2.Select}                                //div[@title="North America"]
${Regions.Region.Select1.Label}                         //li[@class="ant-select-dropdown-menu-item"][text()='North America']
${Regions.Region.Select2.Label}                         //li[@class="ant-select-dropdown-menu-item"][text()='Europe']
#${Regions.Country.Select}                              //div[@class="ant-col-md-10"]/div
${Regions.Country.Select}                               //div[@title="-- Select Country --"]
${Regions.Country2.Select}                               //div[@title="United States"]
${Regions.Country.Select1.Label}                        //li[@class="ant-select-dropdown-menu-item"][text()="United States"]
${Regions.Country.Select2.Label}                        //li[@class="ant-select-dropdown-menu-item"][text()="Albania"]
${Regions.Add.Region.Button}                            //button[contains(.,'Add Region')]
${Regions.Table.FirstRow_1.Label}                       //tbody[@class="ant-table-tbody"]/tr/td[1][text()="North America"]
${Regions.Table.FirstRow_2.Label}                       //tbody[@class="ant-table-tbody"]/tr/td[2][text()="United States"]
${Regions.Table.SecondRow_1.Label}                      //tbody[@class="ant-table-tbody"]/tr/td[1][text()="Europe"]
${Regions.Table.SecondRow_2.Label}                      //tbody[@class="ant-table-tbody"]/tr/td[2][text()="Albania"]
${Regions.Left.Menu.Link}                               //li[@class="ant-menu-item"]/a[text()[contains(.,"Regions")]]



#INDUSTRIES
#${Industries.Sector.Select}                             //div[@class="ant-col-md-8"]/div
${Industries.Sector.Select}                             //div[@title="-- Select Sector --"]
${Industries.Sector2.Select}                             //div[@title="Construction"]
${Industries.Sector.Select1.Label}                      //li[@class="ant-select-dropdown-menu-item"][text()='Construction']
${Industries.Sector.Select2.Label}                      //li[@class="ant-select-dropdown-menu-item"][text()='Manufacturing']
#${Industries.Industry.Select}                          //div[@class="ant-col-md-10"]/div
${Industries.Industry.Select}                           //div[@title="-- Select Industry --"]
${Industries.Industry2.Select}                           //div[@title="Buildings"]
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
#${SuppHistory.Country.Text}                             //div[@class="ant-select-search__field__wrap"]/input[@type="text"]
${SuppHistory.Country.Select}                            //div[@title="-- Please Select --"]
${SuppHistory.Country.Select.Label}                      //li[@class="ant-select-dropdown-menu-item"][text()='Algeria']
${SuppHistory.Sector.Select}                            //div[@title="-- Select Sector --"]
${SuppHistory.Sector.Select.Label}                      //li[@class="ant-select-dropdown-menu-item"][text()='Construction']
${SuppHistory.Industry.Select}                          //div[@title="-- Select Industry --"]
${SuppHistory.Industry.Select.Label}                    //li[@class="ant-select-dropdown-menu-item"][text()='Buildings']
${SuppHistory.Type.Select}                              //div[@title="Perm Placement"]
${SuppHistory.Type.Select.Label}                        //li[@class="ant-select-dropdown-menu-item"][text()='Perm Placement']
${SuppHistory.Class.Select}                             //div[@title="Professional"]
${SuppHistory.Class.Select.Label}                       //li[@class="ant-select-dropdown-menu-item"][text()='Skilled/Semi-Skilled']
${SuppHistory.Save.Button}                              //*[@type="submit"]/span[text()[contains(.,'Save Changes')]]
${SuppHistory.Cancel.Button}                            //*[@type="button"]/span[text()[contains(.,'Cancel')]]
${SuppHistory.Panel}                                    //div[@class="ant-card supplier-history ant-card-bordered"]
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
${Testimonials.Table.Email}                             //tbody[@class="ant-table-tbody"]/tr/td[3][text()="employer@mailinator.com"]
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



#DOCUMENT > AGREEMENT
${Agreement.Document.Tab}                               //div[@class="ant-tabs-tab-active ant-tabs-tab"]
${Agreement.Document.Upload.Top.Button}                 //div[@role="tabpanel"][1]//button[contains(.,"Upload Document")][1]
${Agreement.Document.Upload.Bottom.Button}              //div[@role="tabpanel"][1]//button[contains(.,"Upload Document")][2]
${Agreement.Document.Upload.Modal}                      //div[@class="ant-modal-mask"]
${Agreement.Document.Upload.Input.File}                 //div[@class="ant-upload ant-upload-drag"]/span/input
${Agreement.Document.Upload.Save.Button}                //button[contains(.,"Save Document")]
${Agreement.Document.Upload.Cancel.Button}              //button[contains(.,"Cancel")]
${Agreement.Document.Upload.PaperClip}                  //div[@class="ant-upload-list-item ant-upload-list-item-done"]//i[@class="anticon anticon-paper-clip"]
${Agreement.Document.Upload.PreQual.File}               //div[@class="ant-upload-list-item ant-upload-list-item-done"]/div/span/span[@title="prequal.pdf"]
${Agreement.Document.Upload.Modal.DocumentName.Label}   id=documentName
${Agreement.Document.Upload.Modal.Description.Label}    id=description
${Agreement.Document.Upload.Modal.DocType.Select}       //div[@class="ant-select-selection__placeholder"][text()="Select Document Type"]
${Agreement.Document.Upload.Modal.DocType.PreQual}      //li[@role="menuitem"][text()="Prequalification Requirements"]
${Agreement.Document.Upload.Modal.DocType.NDA}          //li[@role="menuitem"][text()="Non-disclosure Agreements"]
${Agreement.Document.Upload.Modal.DocType.TNC}          //li[@role="menuitem"][text()="Terms and Conditions"]
${Agreement.Document.Upload.Modal.RecType.Select}       //div[@class="ant-select-selection__placeholder"][text()="Select Recruitment Type"]
${Agreement.Document.Upload.Modal.RecType.Contract}     //li[@role="menuitem"][text()="Contract/Temp"]
${Agreement.Document.Upload.Modal.RecType.Perm}         //li[@role="menuitem"][text()="Perm Placement"]
${Agreement.Document.Upload.Modal.RoleCat.Select}       //div[@class="ant-select-selection__placeholder"][text()="Select Role Category"]
${Agreement.Document.Upload.Modal.RoleCat.Ex}           //li[@role="menuitem"][text()="Executive"]
${Agreement.Document.Upload.Modal.RoleCat.Prof}         //li[@role="menuitem"][text()="Professional"]
${Agreement.Document.Upload.Modal.RoleCat.Skill}        //li[@role="menuitem"][text()="Skilled"]
${Agreement.Document.Upload.Table.FileImage}            //tbody[@class="ant-table-tbody"]/tr[1]/td[1]//span[@class="file-icon pdf"]
${Agreement.Document.Upload.Table.DocName}              //tbody[@class="ant-table-tbody"]/tr[1]/td[@class="documentFile"][1]
${Agreement.Document.Upload.Table.RecType}              //tbody[@class="ant-table-tbody"]/tr[1]/td[2]
${Agreement.Document.Upload.Table.RoleCat}              //tbody[@class="ant-table-tbody"]/tr[1]/td[3]
${Agreement.Document.Upload.Table.DocType}              //tbody[@class="ant-table-tbody"]/tr[1]/td[4]
${Agreement.Document.Upload.Table.Date}                 //tbody[@class="ant-table-tbody"]/tr[1]/td[5]



#REQUIREMENTS > PROJECTS
${Projects.Create.Button}                               //div[@class="form-area"]//button[@type="button"]/span[text()[contains(.,'Create Project')]]
${Projects.Create.Modal}                                //div[@class="ant-modal-mask"]
${Projects.Create.Project.Name.Text}                    id=project
${Projects.Create.Ref.ID.Text}                          id=referenceId
${Projects.Create.Sector.Select}                        //div[@title="-- Select Sector --"]
${Projects.Create.Sector.Select.Label}                  //li[@class="ant-select-dropdown-menu-item"][text()='Construction']
${Projects.Create.Industry.Select}                      //div[@title="-- Select Industry --"]
${Projects.Create.Industry.Select.Label}                //li[@class='ant-select-dropdown-menu-item'][text()='Buildings']
${Projects.Create.Region.Select}                        //div[@title="-- Select Region --"]
${Projects.Create.Region.Select.Label}                  //li[@class="ant-select-dropdown-menu-item"][text()='Europe']
${Projects.Create.Country.Select}                       //div[@title='-- Select Country --']
${Projects.Create.Country.Select.Label}                 //li[@class='ant-select-dropdown-menu-item'][text()='Albania']
${Projects.Create.Location}                             id=location
${Projects.Save.Button}                                 //*[@type="submit"]/span[text()[contains(.,'Save Changes')]]
${Projects.Cancel.Button}                               //*[@type="button"]/span[text()[contains(.,'Cancel')]]
${Projects.Table}                                       //tbody[@class="ant-table-tbody"]/tr
${Projects.Table.ProjName.Label}                        //tbody[@class="ant-table-tbody"][1]//td[2]
${Projects.Table.Sector.Label}                          //tbody[@class="ant-table-tbody"][1]//td[3]
${Projects.Table.Industry.Label}                        //tbody[@class="ant-table-tbody"][1]//td[4]
${Projects.Table.Region.Label}                          //tbody[@class="ant-table-tbody"][1]//td[5]
${Projects.Table.Country.Label}                         //tbody[@class="ant-table-tbody"][1]//td[6]
${Projects.Table.Location.Label}                        //tbody[@class="ant-table-tbody"][1]//td[7]
${Projects.Table.Delete.Button}                         //div[@class="ant-table-body-inner"]//button[@title="Delete"][1]
${Projects.Table.Edit.Button}                           //div[@class="ant-table-body-inner"]//button[@title="Edit"][1]
${Projects.Table.Archive.Button}                        //div[@class="ant-table-body-inner"]//button[@title="Archive"][1]
${Projects.Table.Unarchive.Button}                      //div[@class="ant-table-body-inner"]//button[@title="Unarchive"][1]
${Projects.Table.Delete.Modal}                          //div[@class="ant-modal-mask"]
${Projects.Table.Delete.Modal.Cancel.Button}            //*[@type="button"]/span[text()[contains(.,'Cancel')]]
${Projects.Table.Delete.Modal.Confirm.Button}           //*[@type="button"]/span[text()[contains(.,'Confirm')]]
${Projects.Table.No.Data}                               //div[@class="ant-table-placeholder"]
${Projects.Archive.Cancel}                              //*[@type="button"]/span[text()[contains(.,'Cancel')]]
${Projects.Archive.Confirm}                             //*[@type="button"]/span[text()[contains(.,'Confirm')]]
${Projects.Archive.Modal}                               //div[@class="ant-modal-mask"]
${Projects.Archive.Checkbox}                            //input[@type="checkbox"]



#REQUIREMENTS > TALENT REQUEST
${Talent.Request.Tab}                                   //li[@role="menuitem"]/a[text()="Talent Request"]
${Talent.Request.Create.TR.Button}                      //button[contains(.,'Create TR')]
${Talent.Request.Create.TR.Modal}                       //div[@class="ant-modal-mask"]
${Talent.Request.Create.Project.Name.Select}            //div[text()="Select Project"]/following-sibling::div
${Talent.Request.Create.Project.Name.Label}             //li[@role="menuitem"][text()='Project Z']
${Talent.Request.Create.Rec.Type.Select}                //div[text()="Select Recruitment Type"]/following-sibling::div[1]
${Talent.Request.Create.Rec.Type.Label}                 //li[@role="menuitem"][text()='Perm Placement']
${Talent.Request.Create.TR.Modal.ProjName}              //*[@id="talent-requestForm"]/form/div[1]/div[1]//div[@class="ant-form-item-control-wrapper"]
${Talent.Request.Create.TR.Modal.RecType}               //*[@id="talent-requestForm"]/form/div[1]/div[2]//div[@class="ant-form-item-control-wrapper"]
${Talent.Request.Create.TR.Modal.RoleCat}               //*[@id="talent-requestForm"]/form/div[1]/div[3]//div[@class="ant-form-item-control-wrapper"]
${Talent.Request.Create.TR.Modal.Prof}                  //*[@id="talent-requestForm"]/form/div[2]/div[2]/div[1]/div[2]//div[@class="ant-select-selection__rendered"]
${Talent.Request.Create.TR.Modal.PrefLang}              //*[@id="talent-requestForm"]/form/div[2]/div[3]/div[1]/div[2]//div[@class="ant-select-selection__rendered"]
${Talent.Request.Create.TR.Modal.LangProf}              //*[@id="talent-requestForm"]/form/div[2]/div[3]/div[2]/div[2]//div[@class="ant-select-selection__rendered"]
${Talent.Request.Create.TR.Modal.PrefOrigin}            //*[@id="talent-requestForm"]/form/div[2]/div[2]/div[3]/div[2]//div[@class="ant-select-selection__rendered"]
${Talent.Request.Create.TR.Modal.ExpLevel}              //*[@id="talent-requestForm"]/form/div[2]/div[3]/div[3]/div[2]//div[@class="ant-select-selection__rendered"]
${Talent.Request.Create.TR.Modal.Currency}              //*[@id="talent-requestForm"]/form/div[2]/div[4]/div[3]/div[2]/div/div/div[3]//div[@class="ant-select-selection__rendered"]




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