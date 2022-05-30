*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Open Main Page
    go to    https://demoqa.com/

Wait Until Page Is Loaded
    wait until element is visible    id=app
    wait until element is visible    xpath=//*[@id="app"]/header/a

Check Banner
    page should contain element    ${Banner}

Check Elements
    page should contain element    ${Elements}

Check Forms
    page should contain element    ${Forms}

Check Alerts
    page should contain element    ${Alerts}

Check Widgets
    page should contain element    ${Widgets}

Check Interactions
    page should contain element    ${Interactions}

Check Book Store
    page should contain element    ${BookStore}