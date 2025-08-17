*** Settings ***
Library    SeleniumLibrary
Variables    ${CURDIR}/../Resources/Translation/Store.yaml
Variables    ${CURDIR}/../Resources/TestData/Store.yaml

*** Variables ***
#OrderSummary
${CheckoutPage.lblCoupon}                               xpath://*[@id="id_code"]
${CheckoutPage.btnApply}                                xpath://*[@id="order_summary"]/div/div[1]/div[2]/div/form/div/span[2]/button
${CheckoutPage.lblSubtotal}                             xpath://*[@id="order_summary"]/div/div[1]/div[3]/table/tbody/tr[1]/td[1]
${CheckoutPage.lblShipping}                             xpath://*[@id="order_summary"]/div/div[1]/div[3]/table/tbody/tr[2]/td[1]
${CheckoutPage.lblOrderTotal}                           xpath://*[@id="order_summary"]/div/div[1]/div[3]/table/tfoot/tr/td[1]
${CheckoutPage.imgRefund}                               xpath://*[@id="order_summary"]/div/div[2]/ul/li[1]/img
${CheckoutPage.lblRefundTitle}                          xpath://*[@id="order_summary"]/div/div[2]/ul/li[1]/p[1]
${CheckoutPage.lblRefundDetail}                         xpath://*[@id="order_summary"]/div/div[2]/ul/li[1]/p[2]
${CheckoutPage.imgConfidence}                           xpath://*[@id="order_summary"]/div/div[2]/ul/li[2]/img
${CheckoutPage.lblConfidenceTitle}                      xpath://*[@id="order_summary"]/div/div[2]/ul/li[2]/p[1]
${CheckoutPage.lblConfidenceDetail}                     xpath://*[@id="order_summary"]/div/div[2]/ul/li[2]/p[2]
${CheckoutPage.imgPrivacy}                              xpath://*[@id="order_summary"]/div/div[2]/ul/li[3]/img
${CheckoutPage.lblPrivacyTitle}                         xpath://*[@id="order_summary"]/div/div[2]/ul/li[3]/p[1]
${CheckoutPage.lblPrivacyDetail}                        xpath://*[@id="order_summary"]/div/div[2]/ul/li[3]/p[2]
#Contact
${CheckoutPage.imgLogo}                                 xpath:/html/body/div[1]/div/div/div/div/div/div/header/div/div/img
${CheckoutPage.lblContactInformation}                   xpath://*[@id="payment-detail-form"]/div[1]/div[1]/div/h2
${CheckoutPage.txtEmailAddress}                         xpath://*[@id="payment-detail-form"]/div[1]/div[2]/div[1]/div/label
${CheckoutPage.lblEmailAddress}                         xpath://*[@id="id_customer-email"]
${CheckoutPage.txtFirstNameContact}                     xpath://*[@id="payment-detail-form"]/div[1]/div[2]/div[2]/div[1]/div/label
${CheckoutPage.lblFirstNameContact}                     xpath://*[@id="id_customer-first_name"]
${CheckoutPage.txtLastNameContact}                      xpath://*[@id="payment-detail-form"]/div[1]/div[2]/div[2]/div[2]/div/label
${CheckoutPage.lblLastNameContact}                      xpath://*[@id="id_customer-last_name"]
${CheckoutPage.lblEmailMe}                              xpath://*[@id="payment-detail-form"]/div[1]/div[2]/div[3]/div/label

#CCPayment
${CheckoutPage.lblPayment}                              xpath://*[@id="payment-detail-form"]/div[2]/div[1]/div[1]/div/h2
${CheckoutPage.lblCreditCard}                           xpath://*[@id="accordionGroup"]/div[1]/div/div[1]/div/label
${CheckoutPage.frameCardNumber}                         xpath://iframe[contains(@id,"spreedly-number-frame")]
${CheckoutPage.txtCardNumber}                           xpath://*[@id="card_number"]
${CheckoutPage.lblCardNumber}                           xpath://*[@id="payOpt1"]/div[1]
${CheckoutPage.fillCardNumber}                          xpath://*[@id="card_number"]
${CheckoutPage.txtFullName}                             xpath://*[@id="payOpt1"]/div[2]/div/label
${CheckoutPage.lblFullName}                             xpath://*[@id="id_name"]
${CheckoutPage.txtExpirationDate}                       xpath://*[@id="payOpt1"]/div[3]/div[1]/div/label
${CheckoutPage.lblExpirationDate}                       xpath://*[@id="payOpt1"]/div[3]/div[1]/div
${CheckoutPage.fillExpirationDate}                      xpath://*[@id="id_expiry"]
${CheckoutPage.frameCVV}                                xpath://iframe[contains(@id,"spreedly-cvv")]
${CheckoutPage.txtCVV}                                  xpath://*[@id="cvv"]
${CheckoutPage.lblCVV}                                  xpath://*[@id="payOpt1"]/div[3]/div[2]
${CheckoutPage.fillCVV}                                 xpath://*[@id="cvv"]
${CheckoutPage.lblSaveCard}                             xpath://*[@id="payOpt1"]/div[4]/div/label

#PaypalPayment
${CheckoutPage.lblPayWithPaypal}                        xpath://*[@id="accordionGroup"]/div[3]/div/div[1]/div/label
${CheckoutPage.imgCheckoutPayment}                      xpath://*[@id="paypal_control"]/div/div[1]
${CheckoutPage.lblDescription}                          xpath://*[@id="paypal_control"]/div/div[2]

#BTPayment
${CheckoutPage.lblBankTranser}                          xpath://*[@id="accordionGroup"]/div[6]/div/div/div/label
${CheckoutPage.lblTestBT}                               xpath://*[@id="payExOpt0"]/div

#CheckPayment
${CheckoutPage.lblCheck}                                xpath://*[@id="accordionGroup"]/div[7]/div/div/div/label
${CheckoutPage.lblPayWithCheck}                         xpath://*[@id="payExOpt1"]/div

#BillingAddress
${CheckoutPage.lblBillingAddressHeader}                 xpath://*[@id="payment-detail-form"]/div/div[2]/div[1]/div/h2
${CheckoutPage.lblBillingAddress}                       xpath://*[@id="checkoutAccordion"]/div[1]/div/div/div/label
${CheckoutPage.txtCountry}                              xpath://*[@id="billAdd2"]/div/div[1]/div/div/label
${CheckoutPage.lblCountry}                              xpath://*[@id="id_country"]
${CheckoutPage.txtFirstNameBilling}                     xpath://*[@id="billAdd2"]/div/div[2]/div[1]/div/label
${CheckoutPage.lblFirstNameBilling}                     xpath://*[@id="id_first_name"]
${CheckoutPage.txtLastNameBilling}                      xpath://*[@id="billAdd2"]/div/div[2]/div[2]/div/label
${CheckoutPage.lblLastNameBilling}                      xpath://*[@id="id_last_name"]
${CheckoutPage.txtFirstAddress}                         xpath://*[@id="billAdd2"]/div/div[3]/div/label
${CheckoutPage.lblFirstAddress}                         xpath://*[@id="id_line1"]
${CheckoutPage.txtSecondAddress}                        xpath://*[@id="billAdd2"]/div/div[4]/div/label
${CheckoutPage.lblSecondAddress}                        xpath://*[@id="id_line2"]
${CheckoutPage.txtCity}                                 xpath://*[@id="billAdd2"]/div/div[5]/div[1]/div/label
${CheckoutPage.lblCity}                                 xpath://*[@id="id_line4"]
${CheckoutPage.txtState}                                xpath://*[@id="billAdd2"]/div/div[5]/div[2]/div/label
${CheckoutPage.lblState}                                xpath://*[@id="billAdd2"]/div/div[5]/div[2]/div
${CheckoutPage.fillState}                               xpath://*[@id="id_state"]
${CheckoutPage.txtZipcode}                              xpath://*[@id="billAdd2"]/div/div[5]/div[3]/div/label
${CheckoutPage.lblZipcode}                              xpath://*[@id="billAdd2"]/div/div[5]/div[3]/div
${CheckoutPage.fillZipcode}                             xpath://*[@id="id_postcode"]
${CheckoutPage.txtPhoneNumber}                          xpath://*[@id="billAdd2"]/div/div[6]/div/label
${CheckoutPage.lblPhoneNumber}                          xpath://*[@id="id_phone_number"]

#T&C
${CheckoutPage.lblAgain}                                xpath://*[@id="payment-detail-form"]/div[2]/div[3]
${CheckoutPage.lblTestTC}                               xpath://*[@id="payment-detail-form"]/div/div[3]/div[1]/div/div/div/div/div/div/div/label[1]/span
${CheckoutPage.lblCompleteOrder}                        xpath://*[@id="paymentBtn"]

#Errors
${CheckoutPage.lblErrorInvalidCardNumber}               xpath://*[@id="spreedly-error-block"]/div
${CheckoutPage.lblErrorEmptyCVV}                      xpath://*[@id="spreedly-error-block"]/div
${CheckoutPage.lblErrorInvalidPhoneNumber}              xpath://*[@id="billAdd2"]/div/div[6]/span

*** Keywords ***
Verify Summary Detail
    sleep       5s
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblCoupon}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.btnApply}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblSubtotal}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblSubtotal}                          ${CheckoutPage['lblSubtotal']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblShipping}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblShipping}                          ${CheckoutPage['lblShipping']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblOrderTotal}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblOrderTotal}                        ${CheckoutPage['lblOrderTotal']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.imgRefund}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblRefundTitle}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblRefundTitle}                       ${CheckoutPage['lblRefundTitle']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblRefundDetail}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblRefundDetail}                      ${CheckoutPage['lblRefundDetail']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.imgConfidence}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblConfidenceTitle}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblConfidenceTitle}                   ${CheckoutPage['lblConfidenceTitle']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblConfidenceDetail}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblConfidenceDetail}                  ${CheckoutPage['lblConfidenceDetail']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.imgPrivacy}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblPrivacyTitle}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblPrivacyTitle}                      ${CheckoutPage['lblPrivacyTitle']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblPrivacyDetail}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblPrivacyDetail}                     ${CheckoutPage['lblPrivacyDetail']}

Verify Contact Section
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.imgLogo}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblContactInformation}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblContactInformation}                ${CheckoutPage['lblContactInformation']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtEmailAddress}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.txtEmailAddress}                      ${CheckoutPage['txtEmailAddress']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtFirstNameContact}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.txtFirstNameContact}                  ${CheckoutPage['txtFirstNameContact']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtLastNameContact}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.txtLastNameContact}                   ${CheckoutPage['txtLastNameContact']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblEmailMe}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblEmailMe}                           ${CheckoutPage['lblEmailMe']}

Fill In Contact
    [Arguments]       ${ValidEmailAddress}      ${FirstName}        ${LastName}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblEmailAddress}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblEmailAddress}                      ${ValidEmailAddress}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblFirstNameContact}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblFirstNameContact}                  ${FirstName}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblLastNameContact}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblLastNameContact}                   ${LastName}

Verify Payment Section    
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblPayment}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblPayment}                           ${CheckoutPage['lblPayment']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblCreditCard}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblCreditCard}                        ${CheckoutPage['lblCreditCard']}
    SeleniumLibrary.Scroll Element Into View                  ${CheckoutPage.lblCheck}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.frameCardNumber}
    SeleniumLibrary.Select frame                              ${CheckoutPage.frameCardNumber}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtCardNumber}
    ${placeholder}=     Get Element Attribute                 ${CheckoutPage.txtCardNumber}                        placeholder
    Should Be Equal                                           ${placeholder}                                       ${CheckoutPage['txtCardNumber']}
    SeleniumLibrary.Unselect frame  
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtFullName}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.txtFullName}                          ${CheckoutPage['txtFullName']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtExpirationDate}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.txtExpirationDate}                    ${CheckoutPage['txtExpirationDate']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.frameCVV}
    SeleniumLibrary.Select frame                              ${CheckoutPage.frameCVV}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtCVV}
    ${placeholder}=     Get Element Attribute                 ${CheckoutPage.txtCVV}                               placeholder
    Should Be Equal                                           ${placeholder}                                       ${CheckoutPage['txtCVV']}
    SeleniumLibrary.Unselect frame
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblSaveCard}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblSaveCard}                          ${CheckoutPage['lblSaveCard']}

Fill In Valid Payment
    [Arguments]       ${ValidCardNumber}        ${CCFullName}           ${CCExpirationDate}         ${CCCVV}
    SeleniumLibrary.Select frame                              ${CheckoutPage.frameCardNumber}
    SeleniumLibrary.Click Element                             ${CheckoutPage.fillCardNumber}
    SeleniumLibrary.Input text                                ${CheckoutPage.fillCardNumber}                       ${ValidCardNumber}
    SeleniumLibrary.Unselect frame
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblFullName}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblFullName}                          ${CCFullName}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblExpirationDate}
    SeleniumLibrary.Input text                                ${CheckoutPage.fillExpirationDate}                   ${CCExpirationDate}
    SeleniumLibrary.Select frame                              ${CheckoutPage.frameCVV}
    SeleniumLibrary.Click Element                             ${CheckoutPage.fillCVV}
    SeleniumLibrary.Input text                                ${CheckoutPage.fillCVV}                              ${CCCVV}
    SeleniumLibrary.Unselect frame

Verify Billing Address Section
    SeleniumLibrary.Scroll Element Into View                  ${CheckoutPage.txtPhoneNumber}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblBillingAddressHeader}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblBillingAddressHeader}               ${CheckoutPage['lblBillingAddressHeader']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblBillingAddress}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblBillingAddress}                     ${CheckoutPage['lblBillingAddress']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtCountry}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.txtCountry}                            ${CheckoutPage['txtCountry']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtFirstNameBilling}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.txtFirstNameBilling}                   ${CheckoutPage['txtFirstNameBilling']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtLastNameBilling}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.txtLastNameBilling}                    ${CheckoutPage['txtLastNameBilling']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtFirstAddress}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.txtFirstAddress}                       ${CheckoutPage['txtFirstAddress']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtSecondAddress}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.txtSecondAddress}                      ${CheckoutPage['txtSecondAddress']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtCity}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.txtCity}                               ${CheckoutPage['txtCity']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtState}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.txtState}                              ${CheckoutPage['txtState']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtZipcode}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.txtZipcode}                            ${CheckoutPage['txtZipcode']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.txtPhoneNumber}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.txtPhoneNumber}                        ${CheckoutPage['txtPhoneNumber']}

Fill In Valid Billing Address
    [Arguments]        ${Country}       ${FirstName}           ${LastName}         ${FirstAddress}        ${SecondAddress}     ${City}     ${State}     ${Zipcode}     ${PhoneNumber}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblCountry}
    SeleniumLibrary.Select From List By Label                 ${CheckoutPage.lblCountry}                            ${Country}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblFirstNameBilling}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblFirstNameBilling}                   ${FirstName}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblLastNameBilling}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblLastNameBilling}                    ${LastName}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblFirstAddress}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblFirstAddress}                       ${FirstAddress}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblSecondAddress}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblSecondAddress}                      ${SecondAddress}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblCity}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblCity}                               ${City}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblState}
    SeleniumLibrary.Select From List By Label                 ${CheckoutPage.fillState}                             ${State}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblZipcode}
    SeleniumLibrary.Input text                                ${CheckoutPage.fillZipcode}                           ${Zipcode}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblPhoneNumber}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblPhoneNumber}                        ${PhoneNumber}

Verify And Click T&C
    SeleniumLibrary.Scroll Element Into View                  ${CheckoutPage.lblCompleteOrder}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblAgain}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblAgain}                              ${CheckoutPage['lblAgain']}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblTestTC}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblTestTC}                             ${CheckoutPage['lblTestTC']}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblTestTC}
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblCompleteOrder}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblCompleteOrder}                      ${CheckoutPage['lblCompleteOrder']}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblCompleteOrder}

Fill In Invalid Card
    [Arguments]       ${InvalidCardNumber}        ${CCFullName}           ${CCExpirationDate}       ${CCCVV}   
    SeleniumLibrary.Select frame                              ${CheckoutPage.frameCardNumber}
    SeleniumLibrary.Click Element                             ${CheckoutPage.fillCardNumber}
    SeleniumLibrary.Input text                                ${CheckoutPage.fillCardNumber}                        ${InvalidCardNumber}
    SeleniumLibrary.Unselect frame
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblFullName}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblFullName}                           ${CCFullName}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblExpirationDate}
    SeleniumLibrary.Input text                                ${CheckoutPage.fillExpirationDate}                    ${CCExpirationDate}
    SeleniumLibrary.Select frame                              ${CheckoutPage.frameCVV}
    SeleniumLibrary.Click Element                             ${CheckoutPage.fillCVV}
    SeleniumLibrary.Input text                                ${CheckoutPage.fillCVV}                               ${CCCVV}
    SeleniumLibrary.Unselect frame                            

Verify Error Invalid Card
    SeleniumLibrary.Wait Until Element Is visible              ${CheckoutPage.lblErrorInvalidCardNumber}
    SeleniumLibrary.Element Should Contain                     ${CheckoutPage.lblErrorInvalidCardNumber}            ${CheckoutPage['lblErrorInvalidCardNumber']}

Fill In Without CVV
    [Arguments]       ${ValidCardNumber}        ${CCFullName}           ${CCExpirationDate} 
    SeleniumLibrary.Select frame                              ${CheckoutPage.frameCardNumber}
    SeleniumLibrary.Click Element                             ${CheckoutPage.fillCardNumber}
    SeleniumLibrary.Input text                                ${CheckoutPage.fillCardNumber}                        ${ValidCardNumber}
    SeleniumLibrary.Unselect frame
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblFullName}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblFullName}                           ${CCFullName}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblExpirationDate}
    SeleniumLibrary.Input text                                ${CheckoutPage.fillExpirationDate}                    ${CCExpirationDate}

Verify Error No CVV
    SeleniumLibrary.Wait Until Element Is visible              ${CheckoutPage.lblErrorEmptyCVV}
    SeleniumLibrary.Element Should Contain                     ${CheckoutPage.lblErrorEmptyCVV}                     ${CheckoutPage['lblErrorEmptyCVV']}

Fill In Invalid Phone
    [Arguments]        ${Country}       ${FirstName}          ${LastName}         ${FirstAddress}        ${SecondAddress}     ${City}     ${State}     ${Zipcode}     ${InvalidPhoneNumber}
    SeleniumLibrary.Scroll Element Into View                  ${CheckoutPage.txtPhoneNumber}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblCountry}
    SeleniumLibrary.Select From List By Label                 ${CheckoutPage.lblCountry}                            ${Country}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblFirstNameBilling}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblFirstNameBilling}                   ${FirstName}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblLastNameBilling}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblLastNameBilling}                    ${LastName}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblFirstAddress}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblFirstAddress}                       ${FirstAddress}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblSecondAddress}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblSecondAddress}                      ${SecondAddress}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblCity}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblCity}                               ${City}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblState}
    SeleniumLibrary.Select From List By Label                 ${CheckoutPage.fillState}                             ${State}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblZipcode}
    SeleniumLibrary.Input text                                ${CheckoutPage.fillZipcode}                           ${Zipcode}
    SeleniumLibrary.Click Element                             ${CheckoutPage.lblPhoneNumber}
    SeleniumLibrary.Input text                                ${CheckoutPage.lblPhoneNumber}                        ${InvalidPhoneNumber}

Verify Error Invalid Phone
    SeleniumLibrary.Wait Until Element Is visible             ${CheckoutPage.lblErrorInvalidPhoneNumber}
    SeleniumLibrary.Element Should Contain                    ${CheckoutPage.lblErrorInvalidPhoneNumber}            ${CheckoutPage['lblErrorInvalidPhoneNumber']}     
    