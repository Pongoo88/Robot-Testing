*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Open Home Page
    [Documentation]    Opens the home page of the tested site
    go to    ${homepage}

Wait Until Page Is Loaded
    [Documentation]    Waits until the defined page is loaded
    wait until element is visible    id=app
    wait until element is visible    xpath=//*[@id="app"]/div/div/div[1]/div

Fill Full Name
    [Documentation]    Fills in the "Full Name" field
    input text    id=userName    ${Input_Name}

Fill Email
    [Documentation]    Fills in the "Email" field
    input text    id=userEmail    ${Input_Email}

Fill Current Address
    [Documentation]    Fills in the "Current Address" field
    input text    id=currentAddress    ${Input_CurrentAddress}

Fill Permanent Address
    [Documentation]    Fills in the "Permanent Address" field
    input text    id=permanentAddress    ${Input_PermanentAddress}

Scroll to see submit
    [Documentation]    Scrolls down to see the submit button
    scroll element into view    id=item-8

Click Submit
    [Documentation]    Clicks on the "Submit" button
    click element    xpath=//*[@id="submit"]

Check Submit Success
    [Documentation]    Checks if the submit was successfull
    wait until element is visible    xpath=//*[@id="output"]/div    timeout=5s

Clear Full Name
    [Documentation]    Clears the "Full Name" field
    clear element text    id=userName

Clear Email
    [Documentation]    Clears the "Email" field
    clear element text    id=userEmail

Clear Current Address
    [Documentation]    Clears the "Current Address" field
    clear element text    id=currentAddress

Clear Permanent Address
    [Documentation]    Clears the "Permanent Address" field
    clear element text    id=permanentAddress