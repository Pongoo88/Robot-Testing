*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome

*** Keywords ***
Begin Web Test
    open browser    about:blank    ${browser}
    maximize browser window

End Web Test
    close browser