*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Open Main Page
    [Documentation]  Tento keyword nas redirectne na demoqa.com
    [Tags]   MojPrvyTag
    go to    https://demoqa.com/

Wait Until Page Is Loaded #what page is loaded?
    [Documentation]  Tento keyword okontroluje ci sa demoqa.com spravne naloaduje
    [Tags]   MojDruhyTag
    wait until element is visible    id=app
    wait until element is visible    xpath=//*[@id="app"]/header/a

Check Banner #what banner?
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