*** Settings ***
Documentation    Defines all required resources and keywords
...              handling the google website.
Resource         ../adapters/Selenium2Library.robot

*** Variables ***
${Agency.Url}       http://agencydev.ubidywebsite.com:8082
${Employer.Url}     http://employerdev.ubidywebsite.com:8081

*** Keywords ***
Open
    [Arguments]                         ${USER}
    Set Environment Variable            no_proxy    127.0.0.1
    Append To Environment Variable      PATH    D:/Source/Repos/Ubidy_EmployerAutomationSuite/browser-driver/
    OpenChrome
    Set Selenium Implicit Wait          ${Selenium.Timeout}
    Set Selenium Timeout                ${Selenium.Timeout}
    Init UBIDY                          ${USER}


Init UBIDY
    [Arguments]                         ${USER}
    Delete All Cookies
    Go To UBIDY                         ${USER}
    Set Selenium Speed                  ${DELAY}
    Capture Page Screenshot
    #Ubidy.Login.Login To AGENCY


Go To UBIDY
    [Arguments]                         ${USER}
    ${Current.Location}=                Get Location
    log many                            ${Current.Location}
    log many                            ${USER}
    Run Keyword If    '${USER}'=='employer'       Selenium2Library.Go To    ${Employer.Url}
    Run Keyword If    '${USER}'=='agency'         Selenium2Library.Go To    ${Agency.Url}



OpenChrome
    ${chrome options}=                  Evaluate        sys.modules['selenium.webdriver'].ChromeOptions()       sys, selenium.webdriver
    Call Method    ${chrome options}        add_argument    disable-component-extensions-with-background-pages
    Call Method    ${chrome options}        add_argument    start-maximized
    Call Method    ${chrome options}        add_argument    disable-extensions
    Call Method    ${chrome options}        add_argument    test-type
    Call Method    ${chrome options}        add_argument    disable-infobars
    Create Webdriver        Chrome          chrome_options=${chrome options}


Close
    Close Browser