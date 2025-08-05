*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/../Robot/Features/HomePage.robot
Resource    ${CURDIR}/../Robot/Features/ShopPage.robot

*** Test Cases ***
Successfully buy

    [Tags]  1

    HomePage.Open Home Page
    HomePage.Verify Home Page Detail
    HomePage.Click Shop All Button
    ShopPage.Verify And Click Product
    ShopPage.Click Add To Cart
