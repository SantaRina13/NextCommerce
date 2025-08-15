*** Settings ***
Library    SeleniumLibrary
Variables    ${CURDIR}/../Resources/Translation/Store.yaml

*** Variables ***
${OrderDetail.lblYourOrder}                        xpath://*[@id="cart-content"]/div[1]/h4
${OrderDetail.icnClear}                            xpath://*[@id="cart-content"]/div[2]/div[2]/div/div[2]/button/span
${OrderDetail.lblEmptyCartTitle}                   xpath://*[@id="cart-content"]/div[2]/h3
${OrderDetail.lblEmptyCartDetail}                  xpath://*[@id="cart-content"]/div[2]/p
${OrderDetail.icnClose}                            xpath://*[@id="cart-content"]/div[1]/button/span
${OrderDetail.lblQuantity}                         xpath://*[@id="cart-content"]/div[2]/div[2]/div/div[2]/div/div[1]/label
${OrderDetail.lblYourPrice}                        xpath://*[@id="cart-content"]/div[2]/div[2]/div/div[2]/table/tbody/tr/td[1]/strong
${OrderDetail.lblCartSubtotal}                     xpath://*[@id="cart-content"]/div[2]/div[3]/table/tbody/tr[1]/td[1]
${OrderDetail.lblShipping}                         xpath://*[@id="cart-content"]/div[2]/div[3]/table/tbody/tr[2]/td[1]
${OrderDetail.lblCalculatedAtCheckout}             xpath://*[@id="cart-content"]/div[2]/div[3]/table/tbody/tr[2]/td[3]
${OrderDetail.lblTotal}                            xpath://*[@id="cart-content"]/div[2]/div[3]/table/tbody/tr[3]/td[1]
${OrderDetail.lblProceedToCheckout}                xpath://*[@id="cart-content"]/div[3]/a

*** Keywords ***
Verify Your Order
    sleep           5s
    SeleniumLibrary.Wait Until Element Is visible             ${OrderDetail.lblYourOrder}
    SeleniumLibrary.Element Should Contain                    ${OrderDetail.lblYourOrder}                       ${OrderDetail['lblYourOrder']}
    SeleniumLibrary.Wait Until Element Is visible             ${OrderDetail.icnClear}
    SeleniumLibrary.Wait Until Element Is visible             ${OrderDetail.lblQuantity}
    SeleniumLibrary.Element Should Contain                    ${OrderDetail.lblQuantity}                        ${OrderDetail['lblQuantity']}
    SeleniumLibrary.Wait Until Element Is visible             ${OrderDetail.lblYourPrice}
    SeleniumLibrary.Element Should Contain                    ${OrderDetail.lblYourPrice}                       ${OrderDetail['lblYourPrice']}
    SeleniumLibrary.Wait Until Element Is visible             ${OrderDetail.lblCartSubtotal}
    SeleniumLibrary.Element Should Contain                    ${OrderDetail.lblCartSubtotal}                    ${OrderDetail['lblCartSubtotal']}
    SeleniumLibrary.Wait Until Element Is visible             ${OrderDetail.lblShipping}
    SeleniumLibrary.Element Should Contain                    ${OrderDetail.lblShipping}                        ${OrderDetail['lblShipping']}
    SeleniumLibrary.Wait Until Element Is visible             ${OrderDetail.lblCalculatedAtCheckout}
    SeleniumLibrary.Element Should Contain                    ${OrderDetail.lblCalculatedAtCheckout}            ${OrderDetail['lblCalculatedAtCheckout']}
    SeleniumLibrary.Wait Until Element Is visible             ${OrderDetail.lblTotal}
    SeleniumLibrary.Element Should Contain                    ${OrderDetail.lblTotal}                           ${OrderDetail['lblTotal']}
    SeleniumLibrary.Wait Until Element Is visible             ${OrderDetail.lblProceedToCheckout}
    SeleniumLibrary.Element Should Contain                    ${OrderDetail.lblProceedToCheckout}               ${OrderDetail['lblProceedToCheckout']}

Clear Your Order
    SeleniumLibrary.Click Element                             ${OrderDetail.icnClear}
    SeleniumLibrary.Wait Until Element Is visible             ${OrderDetail.lblEmptyCartTitle}
    SeleniumLibrary.Element Should Contain                    ${OrderDetail.lblEmptyCartTitle}                  ${OrderDetail['lblEmptyCartTitle']}
    SeleniumLibrary.Wait Until Element Is visible             ${OrderDetail.lblEmptyCartDetail}
    SeleniumLibrary.Element Should Contain                    ${OrderDetail.lblEmptyCartDetail}                 ${OrderDetail['lblEmptyCartDetail']}
    SeleniumLibrary.Wait Until Element Is visible             ${OrderDetail.icnClose}
    SeleniumLibrary.Click Element                             ${OrderDetail.icnClose}

Click Proceed
    sleep       5s
    SeleniumLibrary.Wait Until Element Is visible             ${OrderDetail.lblProceedToCheckout}
    SeleniumLibrary.Click Element                             ${OrderDetail.lblProceedToCheckout}


