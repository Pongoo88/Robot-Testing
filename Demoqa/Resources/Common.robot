*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    [Documentation]    Opens the browser with a blank page
    open browser    about:blank    ${BROWSER}
    maximize browser window

End Web Test
    [Documentation]    Closes the browser
    close browser