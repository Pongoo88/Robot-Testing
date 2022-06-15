*** Settings ***
Documentation    Demoqa Radio buttons tests
Resource    ../Resources/Common.robot
Resource    ../Resources/Demoqa6.App.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test

*** Variables ***
${HOMEPAGE}    https://demoqa.com/radio-button
${BROWSER}    chrome

*** Test Cases ***
Click Radio Button Yes
    [Documentation]    Clicks the "Yes" radio button
    Demoqa6.App.Open Home Page
    Demoqa6.App.Wait Until Page Is Loaded
    Demoqa6.App.Radio buttons presence check
    Demoqa6.App.Initial radio buttons selection check
    Demoqa6.App.Select yes radio button
    Demoqa6.App.Radio button selection check

Click Radio Button Impressive
    [Documentation]    Clicks the "Impressive" radio button
    Demoqa6.App.Open Home Page
    Demoqa6.App.Wait Until Page Is Loaded
    Demoqa6.App.Radio buttons presence check
    Demoqa6.App.Initial radio buttons selection check
    Demoqa6.App.Select impressive radio button
    Demoqa6.App.Radio button selection check

Click Radio Button No
    [Documentation]    Clicks the "No" radio button
    Demoqa6.App.Open Home Page
    Demoqa6.App.Wait Until Page Is Loaded
    Demoqa6.App.Radio buttons presence check
    Demoqa6.App.Initial radio buttons selection check
    Demoqa6.App.Select no radio button
    Demoqa6.App.Radio button selection check