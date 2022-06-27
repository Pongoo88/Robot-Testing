*** Settings ***
Documentation    Demoqa main webpage test for critical object presence
Resource    ../Resources/Common.robot
Resource    ../Resources/Demoqa.App.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test
Default Tags    Major

*** Variables ***
${BROWSER}    chrome
${URL}    https://demoqa.com/


*** Test Cases ***
Main Page Banner Presence Check
    [Documentation]    Inspection of the tested page for welcoming banner presence
    [Tags]    Minor
    Demoqa.App.Open Demoqa Main Page
    Demoqa.App.Wait Until The Main Page Is Loaded
    Demoqa.App.Check Main Page Banner Presence

Elements Navigation Box Presence
    [Documentation]    Inspection of the tested page for "Elements" navigation box presence
    Demoqa.App.Open Demoqa Main Page
    Demoqa.App.Wait Until The Main Page Is Loaded
    Demoqa.App.Nav.Panel Elements Box Presence

Forms Navigation Box Presence
    [Documentation]    Inspection of the tested page for "Forms" navigation box presence
    Demoqa.App.Open Demoqa Main Page
    Demoqa.App.Wait Until The Main Page Is Loaded
    Demoqa.App.Nav.Panel Forms Box Presence

Alerts Navigation Box Presence
    [Documentation]    Inspection of the tested page for "Alerts, Frame & Windows" navigation box presence
    Demoqa.App.Open Demoqa Main Page
    Demoqa.App.Wait Until The Main Page Is Loaded
    Demoqa.App.Nav.Panel Alerts Box Presence

Widgets Navigation Box Presence
    [Documentation]    Inspection of the tested page for "Widgets" navigation box presence
    Demoqa.App.Open Demoqa Main Page
    Demoqa.App.Wait Until The Main Page Is Loaded
    Demoqa.App.Nav.Panel Widgets Box Presence

Interactions Navigation Box Presence
    [Documentation]    Inspection of the tested page for "Interactions" navigation box presence
    Demoqa.App.Open Demoqa Main Page
    Demoqa.App.Wait Until The Main Page Is Loaded
    Demoqa.App.Nav.Panel Interactions Box Presence

Book Store Navigation Box Presence
    [Documentation]    Inspection of the tested page for "Book Store Application" navigation box presence
    Demoqa.App.Open Demoqa Main Page
    Demoqa.App.Wait Until The Main Page Is Loaded
    Demoqa.App.Nav.Panel Book Store Application Box Presence