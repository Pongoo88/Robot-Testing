*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Demoqa Textbox Page
    [Documentation]  Opens the home page of the tested webpage
    go to    ${URL}

Wait Until The Main Page Is Loaded
    [Documentation]  Waits until the defined page is fully loaded
    wait until element is visible    id=app
    wait until element is visible    xpath=//*[@id="app"]/div/div/div[1]/div

Fill Up The Form
    [Documentation]    Fill up the form with defined input
    input text    id=userName    ${INPUT_NAME}
    input text    id=userName    ${INPUT_EMAIL}
    input text    id=userName    ${INPUT_CURRENT_ADDRESS}
    input text    id=userName    ${INPUT_PERMANENT_ADDRESS}

Submit The Form
    [Documentation]    Scrolls down to see the submit button and clicks on it.
    scroll element into view    id=item-8
    click element    xpath=//*[@id="submit"]

Check Submit Success
    [Documentation]    Checks if the submit was successfull
    wait until element is visible    xpath=//*[@id="output"]/div    timeout=5s

Clear The form
    [Documentation]    Clears all fields
    clear element text    id=userName
    clear element text    id=userEmail
    clear element text    id=currentAddress
    clear element text    id=permanentAddress