*** Settings ***
Documentation    Demoqa Text Box Tests
Resource    ../Resources/Common.robot
Resource    ../Resources/Demoqa4.App.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test

*** Variables ***
${homepage}    https://demoqa.com/text-box
${Input_Name}    Dave
${Input_Email}    davidcuper@gmail.com
${Input_CurrentAddress}    London
${Input_PermanentAddress}    Belfast

*** Test Cases ***
Fill And Delete Form
    [Documentation]    Fill up the form and "submit"
    Demoqa4.App.Open Home Page
    Demoqa4.App.Wait Until Page Is Loaded
    Demoqa4.App.Fill Full Name
    Demoqa4.App.Fill Email
    Demoqa4.App.Fill Current Address
    Demoqa4.App.Fill Permanent Address
    Demoqa4.App.Scroll to click
    Demoqa4.App.Click Submit
    Demoqa4.App.Check Submit Success
    Demoqa4.App.Clear Full Name
    Demoqa4.App.Clear Email
    Demoqa4.App.Clear Current Address
    Demoqa4.App.Clear Permanent Address
    sleep    2s