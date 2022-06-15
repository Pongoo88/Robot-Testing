*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Home Page
    [Documentation]    Opens the home page of the tested site
    Go to    ${HOMEPAGE}

Wait Until Page Is Loaded
    [Documentation]    Waits until the defined page is loaded
    Wait until element is visible    id=app
    Wait until element is visible    xpath=//*[@id="app"]/div/div/div[1]

Radio buttons presence check
    [Documentation]    Checks if the radio buttons are present
    Page should contain radio button    id=yesRadio
    Page should contain radio button    id=impressiveRadio
    Page should contain radio button    id=noRadio

Initial radio buttons selection check
    [Documentation]    Check if the radio buttons are selected
    radio button should not be selected    like

Select yes radio button
    [Documentation]    Selects the "yes" radio button
    select radio button    like    yesRadio

Select impressive radio button
    [Documentation]    Selects the "impressive" radio button
    select radio button    like    impressiveRadio

Select no radio button
    [Documentation]    Selects the "no" radio button
    select radio button    like    noRadio

Radio button selection check
    [Documentation]    Checks if the radio button "yes" was selected
    wait until element is visible    id=//*[@id="app"]/div/div/div[2]/div[2]/div[2]/p/span