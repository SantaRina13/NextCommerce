*** Settings ***
Resource    ${CURDIR}/../Robot/Pages/HomePage.robot

*** Keywords ***
Open Home Page
    HomePage.Open Page

Verify Home Page Detail
    HomePage.Verify Home Page

Click Shop All Button
    HomePage.Click Shop All