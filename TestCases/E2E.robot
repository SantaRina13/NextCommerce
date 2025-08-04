*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/../Robot/Features/HomePage.robot

*** Test Cases ***
Successfully buy

    [Tags]  1

    HomePage.Open Home Page
    HomePage.Verify Home Page Detail
    HomePage.Click Shop All Button
