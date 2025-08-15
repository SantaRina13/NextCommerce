*** Settings ***
Library    SeleniumLibrary
Variables    ${CURDIR}/../Resources/Translation/Store.yaml

*** Variables ***
#OrderSummary
${SummaryPage.lblSubTotal}                         xpath://*[@id="order_summary"]/div/div/div[2]/table/tbody/tr[1]/td[1]
${SummaryPage.lblShipping}                         xpath://*[@id="order_summary"]/div/div/div[2]/table/tbody/tr[2]/td
${SummaryPage.lblOrderTotal}                       xpath://*[@id="order_summary"]/div/div/div[2]/table/tfoot/tr/td[1]

#SummaryDetail
${SummaryPage.imgLogo}                             xpath:/html/body/div[1]/div/div/div/div/div/div/header/div/div/img
${SummaryPage.lblContactInfo}                      xpath:/html/body/div[1]/div/div/div/div/div/div/main/div[1]/div/div[3]/div/div[1]/div/div[1]
${SummaryPage.lblPaymentMethod}                    xpath:/html/body/div[1]/div/div/div/div/div/div/main/div[1]/div/div[3]/div/div[2]/div/div[1]
${SummaryPage.lblBillingAddress}                   xpath:/html/body/div[1]/div/div/div/div/div/div/main/div[1]/div/div[3]/div/div[3]/div/div[1]
${SummaryPage.lblInvoice}                          xpath:/html/body/div[1]/div/div/div/div/div/div/main/div[1]/div/div[3]/div/div[4]/div/div[1]
${SummaryPage.lblViewInvoice}                      xpath:/html/body/div[1]/div/div/div/div/div/div/main/div[1]/div/div[3]/div/div[4]/div/div[2]/a
${SummaryPage.lblContinueShopping}                 xpath:/html/body/div[1]/div/div/div/div/div/div/main/div[2]/div[1]/a

*** Keywords ***
Verify Order Summary
    sleep           5s
    SeleniumLibrary.Wait Until Element Is visible             ${SummaryPage.lblSubTotal}
    SeleniumLibrary.Element Should Contain                    ${SummaryPage.lblSubTotal}                       ${SummaryPage['lblSubTotal']}
    SeleniumLibrary.Wait Until Element Is visible             ${SummaryPage.lblShipping}
    SeleniumLibrary.Element Should Contain                    ${SummaryPage.lblShipping}                       ${SummaryPage['lblShipping']}
    SeleniumLibrary.Wait Until Element Is visible             ${SummaryPage.lblOrderTotal}
    SeleniumLibrary.Element Should Contain                    ${SummaryPage.lblOrderTotal}                     ${SummaryPage['lblOrderTotal']}

Verify Summary Detail
    SeleniumLibrary.Wait Until Element Is visible             ${SummaryPage.imgLogo}
    SeleniumLibrary.Wait Until Element Is visible             ${SummaryPage.lblContactInfo}
    SeleniumLibrary.Element Should Contain                    ${SummaryPage.lblContactInfo}                    ${SummaryPage['lblContactInfo']}
    SeleniumLibrary.Wait Until Element Is visible             ${SummaryPage.lblPaymentMethod}
    SeleniumLibrary.Element Should Contain                    ${SummaryPage.lblPaymentMethod}                  ${SummaryPage['lblPaymentMethod']}
    SeleniumLibrary.Wait Until Element Is visible             ${SummaryPage.lblBillingAddress}
    SeleniumLibrary.Element Should Contain                    ${SummaryPage.lblBillingAddress}                 ${SummaryPage['lblBillingAddress']}
    SeleniumLibrary.Wait Until Element Is visible             ${SummaryPage.lblInvoice}
    SeleniumLibrary.Element Should Contain                    ${SummaryPage.lblInvoice}                        ${SummaryPage['lblInvoice']}
    SeleniumLibrary.Wait Until Element Is visible             ${SummaryPage.lblViewInvoice}
    SeleniumLibrary.Element Should Contain                    ${SummaryPage.lblViewInvoice}                    ${SummaryPage['lblViewInvoice']}
    SeleniumLibrary.Wait Until Element Is visible             ${SummaryPage.lblContinueShopping}
    SeleniumLibrary.Element Should Contain                    ${SummaryPage.lblContinueShopping}               ${SummaryPage['lblContinueShopping']}

Click Continue
    SeleniumLibrary.Click Element                             ${SummaryPage.lblContinueShopping}


