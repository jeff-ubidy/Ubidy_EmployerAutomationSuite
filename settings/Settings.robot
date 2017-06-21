*** Settings ***
Documentation    A resource file to setup all variables.
...              PRG PROGRAMMED FPO ACB A-CAP RESOURCES FPO BHP BHP BILLITON LIMITED FPO
Resource          profiles/${Profile}.txt

*** Variables ***
${Profile}                      Local
${Selenium.Browser.Name}        chrome
${Selenium.Browser.Version}     44
${Selenium.Timeout}             120.0
${DELAY}                        0.0010