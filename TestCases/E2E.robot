*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/../Features/HomePage.robot
Resource    ${CURDIR}/../Features/ShopPage.robot
Resource    ${CURDIR}/../Features/OrderDetail.robot
Resource    ${CURDIR}/../Features/CheckoutPage.robot
Resource    ${CURDIR}/../Features/SummaryPage.robot
Variables   ${CURDIR}/../Resources/TestData/Store.yaml

*** Test Cases ***
Successfully Buy

    [Tags]  1

    HomePage.Open Home Page
    HomePage.Verify Home Page Detail
    HomePage.Click Shop All Button
    ShopPage.Verify And Click Product
    ShopPage.Click Add To Cart
    OrderDetail.Verify Order Detail
    OrderDetail.Clear Cart
    ShopPage.Add Denomination                         
    ShopPage.Add Quantity                              
    ShopPage.Click Add To Cart
    OrderDetail.Click Proceed To Checkout
    CheckoutPage.Verify Order Summary
    CheckoutPage.Verify And Fill In Contact                 ${Contact['ValidEmailAddress']}        ${Contact['FirstName']}           ${Contact['LastName']}
    CheckoutPage.Verify And Fill In Valid Payment           ${CCPayment['ValidCardNumber']}        ${CCPayment['CCFullName']}        ${CCPayment['CCExpirationDate']}       ${CCPayment['CCCVV']}
    CheckoutPage.Verify And Fill In Billing Address         ${BillingAddress['Country']}           ${Contact['FirstName']}           ${Contact['LastName']}                 ${BillingAddress['FirstAddress']}      ${BillingAddress['SecondAddress']}      ${BillingAddress['City']}      ${BillingAddress['State']}      ${BillingAddress['Zipcode']}      ${BillingAddress['PhoneNumber']}
    CheckoutPage.Verify and Click Agreement
    SummaryPage.Verify Summary Page
    SummaryPage.Click Continue Shopping

Fail To Buy With Invalid Card Number

    [Tags]  2

    HomePage.Open Home Page
    HomePage.Verify Home Page Detail
    HomePage.Click Shop All Button
    ShopPage.Verify And Click Product
    ShopPage.Click Add To Cart
    OrderDetail.Click Proceed To Checkout
    CheckoutPage.Verify Order Summary
    CheckoutPage.Verify And Fill In Contact                     ${Contact['ValidEmailAddress']}        ${Contact['FirstName']}           ${Contact['LastName']}
    CheckoutPage.Fill In Invalid Card Number                    ${CCPayment['InvalidCardNumber']}      ${CCPayment['CCFullName']}        ${CCPayment['CCExpirationDate']}       ${CCPayment['CCCVV']}
    CheckoutPage.Verify And Fill In Valid Billing Address       ${BillingAddress['Country']}           ${Contact['FirstName']}           ${Contact['LastName']}                 ${BillingAddress['FirstAddress']}      ${BillingAddress['SecondAddress']}      ${BillingAddress['City']}      ${BillingAddress['State']}      ${BillingAddress['Zipcode']}      ${BillingAddress['PhoneNumber']}
    CheckoutPage.Verify and Click Agreement
    CheckoutPage.Verify Error Invalid Card Number 

Fail To Buy With Empty CVV

    [Tags]  3

    HomePage.Open Home Page
    HomePage.Verify Home Page Detail
    HomePage.Click Shop All Button
    ShopPage.Verify And Click Product
    ShopPage.Click Add To Cart
    OrderDetail.Click Proceed To Checkout
    CheckoutPage.Verify Order Summary
    CheckoutPage.Verify And Fill In Contact                     ${Contact['ValidEmailAddress']}        ${Contact['FirstName']}           ${Contact['LastName']}
    CheckoutPage.Fill In Empty CVV                              ${CCPayment['InvalidCardNumber']}      ${CCPayment['CCFullName']}        ${CCPayment['CCExpirationDate']}
    CheckoutPage.Verify And Fill In Valid Billing Address       ${BillingAddress['Country']}           ${Contact['FirstName']}           ${Contact['LastName']}                 ${BillingAddress['FirstAddress']}      ${BillingAddress['SecondAddress']}      ${BillingAddress['City']}      ${BillingAddress['State']}      ${BillingAddress['Zipcode']}      ${BillingAddress['PhoneNumber']}
    CheckoutPage.Verify and Click Agreement
    CheckoutPage.Verify Error Empty CVV

Fail To Buy With Invalid Phone Number

    [Tags]  4

    HomePage.Open Home Page
    HomePage.Verify Home Page Detail
    HomePage.Click Shop All Button
    ShopPage.Verify And Click Product
    ShopPage.Click Add To Cart
    OrderDetail.Click Proceed To Checkout
    CheckoutPage.Verify Order Summary
    CheckoutPage.Verify And Fill In Contact                ${Contact['ValidEmailAddress']}        ${Contact['FirstName']}           ${Contact['LastName']}
    CheckoutPage.Verify And Fill In Valid Payment          ${CCPayment['ValidCardNumber']}        ${CCPayment['CCFullName']}        ${CCPayment['CCExpirationDate']}     ${CCPayment['CCCVV']}
    CheckoutPage.Fill In Invalid Phone Number              ${BillingAddress['Country']}           ${Contact['FirstName']}           ${Contact['LastName']}               ${BillingAddress['FirstAddress']}      ${BillingAddress['SecondAddress']}      ${BillingAddress['City']}      ${BillingAddress['State']}      ${BillingAddress['Zipcode']}      ${BillingAddress['InvalidPhoneNumber']}
    CheckoutPage.Verify and Click Agreement
    CheckoutPage.Verify Error Invalid Phone Number