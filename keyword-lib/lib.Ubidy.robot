*** Keywords ***
Text Should Be Equal
    [Arguments]                         ${locators}                                ${value}
    ${attValue1}=                       Get Text                                   ${locators}
    ${attValue2}=                       Execute Javascript                         return document.evaluate('${locators}', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.outerText;
    Log to console                      ${attValue1}
    Log to console                      ${attValue2}
    ${elementText}=                     Set Variable if                            '${attValue1}'=='None'          ${attValue2}        ${attValue1}
    Log to console                      ${elementText}
    Should Be Equal                     '${elementText}'                           '${value}'
    #Capture Page Screenshot




Get outerText through JS
    [Arguments]                         ${locators}
    ${attValue}=                        Execute Javascript      return document.evaluate('${locators}', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.outerText;
    [Return]                            ${attValue}



Scroll to element
    [Arguments]                         ${locators}
    Execute Javascript                  document.evaluate('${locators}', document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.scrollIntoView(true);