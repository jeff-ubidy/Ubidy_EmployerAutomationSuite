*** Settings ***
Documentation       Suite description
Suite Teardown      Ubidy.Browser.Close
Resource            ../../settings/Settings.robot
Resource            ../../imports/Ubidy.Resources.robot

*** Test Cases ***
Test title
    Click Element      //a[@href="/requirements/projects"]

*** Keywords ***
Provided precondition
    Setup system under test