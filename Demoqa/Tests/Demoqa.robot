*** Settings ***
Documentation    Demoqa webpage test
Resource    ../Resources/Common.robot
Resource    ../Resources/Demoqa.App.robot
Test Setup    Common.Begin Web Test
Test Teardown    Common.End Web Test

*** Variables ***
${Banner}    xpath=//*[@id="app"]/header/a
${Elements}    xpath=//*[@id="app"]/div/div/div[2]/div/div[1]/div/div[2]
${Forms}    xpath=//*[@id="app"]/div/div/div[2]/div/div[2]/div/div[2]
${Alerts}    xpath=//*[@id="app"]/div/div/div[2]/div/div[3]/div/div[2]
${Widgets}    xpath=//*[@id="app"]/div/div/div[2]/div/div[4]/div/div[2]
${Interactions}    xpath=//*[@id="app"]/div/div/div[2]/div/div[5]/div/div[2]
${BookStore}    xpath=//*[@id="app"]/div/div/div[2]/div/div[6]/div/div[2]

*** Test Cases ***
Banner
    Demoqa.App.Open Main Page
    Demoqa.App.Wait Until Page Is Loaded
    Demoqa.App.Check Banner

Elements
    Demoqa.App.Open Main Page
    Demoqa.App.Wait Until Page Is Loaded
    Demoqa.App.Check Elements

Forms
    Demoqa.App.Open Main Page
    Demoqa.App.Wait Until Page Is Loaded
    Demoqa.App.Check Forms

Alerts
    Demoqa.App.Open Main Page
    Demoqa.App.Wait Until Page Is Loaded
    Demoqa.App.Check Alerts

Widgets
    Demoqa.App.Open Main Page
    Demoqa.App.Wait Until Page Is Loaded
    Demoqa.App.Check Widgets

Interactions
    Demoqa.App.Open Main Page
    Demoqa.App.Wait Until Page Is Loaded
    Demoqa.App.Check Interactions

Book Store
    Demoqa.App.Open Main Page
    Demoqa.App.Wait Until Page Is Loaded
    Demoqa.App.Check Book Store