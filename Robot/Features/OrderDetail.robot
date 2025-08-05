*** Settings ***
Resource    ${CURDIR}/../Pages/ShopPage.robot

*** Keywords ***
Verify And Click Product
    ShopPage.Verify Product
    ShopPage.Click Product
    ShopPage.Verify Product Detail

Click Add To Cart
    ShopPage.Click Add Product