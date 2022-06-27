*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Demoqa Main Page
    [Documentation]  Opens the home page of the tested webpage
    go to    ${URL}

Wait Until The Main Page Is Loaded
    [Documentation]  Waits until the defined page is fully loaded
    wait until element is visible    id=app
    wait until element is visible    xpath=//*[@id="app"]/header/a

Check Main Page Banner Presence
    [Documentation]    Inspection of main page if it contains the desired banner
    page should contain element    xpath=//*[@id="app"]/header/a

Nav.Panel Elements Box Presence
    [Documentation]    Inspection of main page if the "Elements" navigation panel is present
    page should contain element    xpath=//*[@id="app"]/div/div/div[2]/div/div[1]/div/div[2]

Nav.Panel Forms Box Presence
    [Documentation]    Inspection of main page if the "Forms" navigation panel is present
    page should contain element    xpath=//*[@id="app"]/div/div/div[2]/div/div[2]/div/div[2]

Nav.Panel Alerts Box Presence
    [Documentation]    Inspection of main page if the "Alerts, Frame & Windows" navigation panel is present
    page should contain element    xpath=//*[@id="app"]/div/div/div[2]/div/div[3]/div/div[2]

Nav.Panel Widgets Box Presence
    [Documentation]    Inspection of main page if the "Widgets" navigation panel is present
    page should contain element    xpath=//*[@id="app"]/div/div/div[2]/div/div[4]/div/div[2]

Nav.Panel Interactions Box Presence
    [Documentation]    Inspection of main page if the "Interactions" navigation panel is present
    page should contain element    xpath=//*[@id="app"]/div/div/div[2]/div/div[5]/div/div[2]

Nav.Panel Book Store Application Box Presence
    [Documentation]    Inspection of main page if the "Book Store Application" navigation panel is present
    page should contain element    xpath=//*[@id="app"]/div/div/div[2]/div/div[6]/div/div[2]