*** Settings ***
Documentation    Demoqa Radio buttons tests
Resource    ../Resources/Common.robot
Resource    ../Resources/Demoqa6.App.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test

*** Variables ***
${HOMEPAGE}    https://demoqa.com/radio-button
${BROWSER}    chrome
${NUMBER1}    5
${NUMBER2}    5
${YES_RADIO_BUTTON}    id=yesRadio

#robot -d   demoqa6/results demoqa6/tests/demoqa6.robot

*** Test Cases ***
Click Radio Button Yes
    [Documentation]    Click the "Yes" radio button and verify the selection
    Demoqa6.App.Open Home Page
    Demoqa6.App.Wait Until Page Is Loaded
    Demoqa6.App.Radio Buttons Presence Check
    Demoqa6.App.Initial Selection Check
    Demoqa6.App.Select Yes Button
    Demoqa6.App.Button Yes Selection Check

Click Radio Button Impressive
    [Documentation]    Click the "Impressive" radio button and verify the selection
    Demoqa6.App.Open Home Page
    Demoqa6.App.Wait Until Page Is Loaded
    Demoqa6.App.Radio Buttons Presence Check
    Demoqa6.App.Initial Selection Check
    Demoqa6.App.Select Impressive Button
    Demoqa6.App.Button Impressive Selection Check

Click Radio Button No
    [Documentation]    Click the "No" radio button and verify the selection
    Demoqa6.App.Open Home Page
    Demoqa6.App.Wait Until Page Is Loaded
    Demoqa6.App.Radio Buttons Presence Check
    Demoqa6.App.Initial Selection Check
    Demoqa6.App.Select No Button
    Demoqa6.App.Button No Selection Check