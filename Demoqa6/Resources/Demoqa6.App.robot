*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Yes_Button_Status}
${Impressive_Button_Status}
${No_Button_Status}

*** Keywords ***
Open Home Page
    [Documentation]    Opens the home page of the tested site
    Go to    ${HOMEPAGE}

Wait Until Page Is Loaded
    [Documentation]    Waits until the defined page is loaded
    Wait until element is visible    id=app
    Wait until element is visible    xpath=//*[@id="app"]/div/div/div[1]

Radio Buttons Presence Check
    [Documentation]    Checks if the radio buttons are present
    Page should contain radio button    id=yesRadio
    Page should contain radio button    id=impressiveRadio
    Page should contain radio button    id=noRadio

Initial Selection Check
    [Documentation]    Check if the radio buttons are selected
    radio button should not be selected    like

Select Yes Button
    [Documentation]    Selects the "yes" radio button if enabled
    ${Yes_Button_Status}=    run keyword and return status    element should be enabled    id=yesRadio
    run keyword if    ${Yes_Button_Status} == True    click element    xpath=//*[@id="app"]/div/div/div[2]/div[2]/div[2]/div[2]/label
    ...    ELSE    log    The radio button is disabled

Select Impressive Button
    [Documentation]    Selects the "impressive" radio button if enabled
    ${Impressive_Button_Status}=    run keyword and return status    element should be enabled    id=impressiveRadio
    run keyword if    ${impressive_button_status} == True    click element    xpath=//*[@id="app"]/div/div/div[2]/div[2]/div[2]/div[3]/label
    ...    ELSE    log    The radio button is disabled

Select No Button
    [Documentation]    Selects the "no" radio button if enabled
    ${No_Button_Status}=    run keyword and return status    element should be enabled    id=noRadio
    run keyword if    ${no_button_status} == True    click element    xpath=//*[@id="app"]/div/div/div[2]/div[2]/div[2]/div[4]/label
    ...    ELSE    log    The radio button is disabled

Button Yes Selection Check
    [Documentation]    Checks if the radio button "Yes" was selected
    element text should be    xpath=//*[@id="app"]/div/div/div[2]/div[2]/div[2]/p/span    Yes

Button Impressive Selection Check
    [Documentation]    Checks if the radio button "Impressive" was selected
    element text should be    xpath=//*[@id="app"]/div/div/div[2]/div[2]/div[2]/p/span    Impressive

Button No Selection Check
    [Documentation]    Checks if the radio button "No" was selected
    page should not contain element    xpath=//*[@id="app"]/div/div/div[2]/div[2]/div[2]/p