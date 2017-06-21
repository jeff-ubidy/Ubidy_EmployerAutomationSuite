*** Settings ***
Suite Teardown      Ubidy.Browser.Close
Resource          ../../settings/Settings.robot
Resource          ../../imports/Ubidy.Resources.robot


*** Test Cases ***
Login
    Ubidy.Browser.Open
    Login To UBIDY


