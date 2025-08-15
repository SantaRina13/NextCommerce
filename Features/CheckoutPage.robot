*** Settings ***
Resource    ${CURDIR}/../Pages/CheckoutPage.robot

*** Keywords ***
Verify Order Summary    
    CheckoutPage.Verify Summary Detail

Verify And Fill In Contact
    [Arguments]         ${ValidEmailAddress}        ${FirstName}        ${LastName}
    CheckoutPage.Verify Contact Section
    CheckoutPage.Fill In Contact                    ${ValidEmailAddress}     ${FirstName}        ${LastName} 

Verify And Fill In Valid Payment  
    [Arguments]         ${ValidCardNumber}          ${CCFullName}       ${CCExpirationDate}         ${CCCVV}
    CheckoutPage.Verify Payment Section  
    CheckoutPage.Fill In Valid Payment              ${ValidCardNumber}       ${CCFullName}          ${CCExpirationDate}          ${CCCVV}

Verify And Fill In Valid Billing Address    
    [Arguments]         ${Country}                  ${FirstName}        ${LastName}         ${FirstAddress}     ${SecondAddress}       ${City}       ${State}        ${Zipcode}      ${PhoneNumber}
    CheckoutPage.Verify Billing Address Section
    CheckoutPage.Fill In Valid Billing Address      ${Country}          ${FirstName}        ${LastName}         ${FirstAddress}        ${SecondAddress}       ${City}       ${State}        ${Zipcode}      ${PhoneNumber}

Verify and Click Agreement
    CheckoutPage.Verify And Click T&C

Fill In Invalid Card Number
    [Arguments]         ${InvalidCardNumber}      ${CCFullName}           ${CCExpirationDate}         ${CCCVV}
    CheckoutPage.Fill In Invalid Card             ${InvalidCardNumber}             ${CCFullName}           ${CCExpirationDate}         ${CCCVV}

Verify Error Invalid Card Number
    CheckoutPage.Verify Error Invalid Card

Fill In Empty CVV
    [Arguments]         ${InvalidCardNumber}      ${CCFullName}           ${CCExpirationDate}       
    CheckoutPage.Fill In Without CVV              ${InvalidCardNumber}             ${CCFullName}           ${CCExpirationDate}

Verify Error Empty CVV
    CheckoutPage.Verify Error No CVV

Fill In Invalid Phone Number    
    [Arguments]         ${Country}          ${FirstName}          ${LastName}         ${FirstAddress}     ${SecondAddress}       ${City}       ${State}        ${Zipcode}      ${InvalidPhoneNumber}
    CheckoutPage.Fill In Invalid Phone      ${Country}            ${FirstName}        ${LastName}         ${FirstAddress}        ${SecondAddress}       ${City}       ${State}        ${Zipcode}      ${InvalidPhoneNumber}

Verify Error Invalid Phone Number
    CheckoutPage.Verify Error Invalid Phone