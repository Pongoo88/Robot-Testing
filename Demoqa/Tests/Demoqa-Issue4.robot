*** Settings ***
Documentation    Demoqa Text Box Tests
Resource    ../Resources/Common.robot
Resource    ../Resources/Demoqa-Issue4.App.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test
Default Tags    Major

*** Variables ***
${BROWSER}    chrome
${URL}    https://demoqa.com/text-box
${INPUT_NAME}    Dave
${INPUT_EMAIL}    davidko123@gmail.com
${INPUT_CURRENT_ADDRESS}    London
${INPUT_PERMANENT_ADDRESS}    Belfast

*** Test Cases ***
Fill And Delete Form Contents
    [Documentation]    Fill up the form and select confirm it with "submit"
    Demoqa-Issue4.App.Open Demoqa Textbox Page
    Demoqa-Issue4.App.Wait Until The Main Page Is Loaded
    Demoqa-Issue4.App.Fill Up The Form
    Demoqa-Issue4.App.Submit The Form
    Demoqa-Issue4.App.Check Submit Success
    Demoqa-Issue4.App.Clear The form
    sleep    2s