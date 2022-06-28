*** Settings ***
Documentation    Demoqa Radio buttons tests
Resource    ../Resources/Common.robot
Resource    ../Resources/Demoqa-Issue6.App.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test
Default Tags    Major

*** Variables ***
${BROWSER}    chrome
${URL}    https://demoqa.com/radio-button

#robot -d   demoqa/results demoqa/tests/demoqa-issue6.robot

*** Test Cases ***
Click Radio Button Yes
    [Documentation]    Click the "Yes" radio button and verify the selection
    Demoqa-Issue6.App.Open Radio Button Test Page
    Demoqa-Issue6.App.Wait Until Radio Button Test Page Is Loaded
    Demoqa-Issue6.App.Radio Buttons Presence Check
    Demoqa-Issue6.App.Initial Selection Check
    Demoqa-Issue6.App.Select Yes Button
    Demoqa-Issue6.App.Button Yes Selection Check

Click Radio Button Impressive
    [Documentation]    Click the "Impressive" radio button and verify the selection
    Demoqa-Issue6.App.Open Radio Button Test Page
    Demoqa-Issue6.App.Wait Until Radio Button Test Page Is Loaded
    Demoqa-Issue6.App.Radio Buttons Presence Check
    Demoqa-Issue6.App.Initial Selection Check
    Demoqa-Issue6.App.Select Impressive Button
    Demoqa-Issue6.App.Button Impressive Selection Check

Click Radio Button No
    [Documentation]    Click the "No" radio button and verify the selection
    Demoqa-Issue6.App.Open Radio Button Test Page
    Demoqa-Issue6.App.Wait Until Radio Button Test Page Is Loaded
    Demoqa-Issue6.App.Radio Buttons Presence Check
    Demoqa-Issue6.App.Initial Selection Check
    Demoqa-Issue6.App.Select No Button
    Demoqa-Issue6.App.Button No Selection Check