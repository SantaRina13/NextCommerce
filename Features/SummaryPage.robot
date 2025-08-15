*** Settings ***
Resource    ${CURDIR}/../Pages/SummaryPage.robot

*** Keywords ***
Verify Summary Page 
    SummaryPage.Verify Order Summary
    SummaryPage.Verify Summary Detail

Click Continue Shopping
    SummaryPage.Click Continue