*** Settings ***
Resource    ${CURDIR}/../Pages/ShopPage.robot

*** Keywords ***
Verify And Click Product
    ShopPage.Verify Product
    ShopPage.Click Product
    ShopPage.Verify Product Detail

Add Denomination
    ShopPage.Select Denomination

Add Quantity
    ShopPage.Select Quantity

Click Add To Cart
    ShopPage.Click Add Product