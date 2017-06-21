*** Settings ***
Force Tags          UB-41
Suite Teardown      Ubidy.Browser.Close
Resource            ../../settings/Settings.robot
Resource            ../../imports/Ubidy.Resources.robot


*** Test Cases ***
Profile Details - Add logo
    Ubidy.Pages.Login To UBIDY              ${USER}
    Add LOGO with VALID file format
    Add LOGO with INVALID file format
    Click Element                           ${Menu.Profile.Link}
    Update profile information






