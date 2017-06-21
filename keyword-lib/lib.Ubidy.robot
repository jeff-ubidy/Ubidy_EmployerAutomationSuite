*** Keywords ***
Text Should Be Equal
    [Arguments]         ${locators}         ${value}
    ${attValue}=                        Get Text                                    ${locators}
    Log to console                      ${attValue}
    Should Be Equal                     '${attValue}'                               '${value}'



Scroll to element
    [Arguments]         ${locators}
    Execute Javascript          document.evaluate('${locators}', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView(true);