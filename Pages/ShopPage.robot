*** Settings ***
Library    SeleniumLibrary
Variables    ${CURDIR}/../Resources/Translation/Store.yaml
Variables    ${CURDIR}/../Resources/TestData/Store.yaml

*** Variables ***
${ShopPage.lblProductTitle}                        xpath://*[@id="content_inner"]/section/div/div/div[2]/div/div[3]/div/div[2]/div[1]/a
${ShopPage.lblProductDetail}                       xpath://*[@id="content_inner"]/section[1]/div/div/div[2]/h1
${ShopPage.lblDenomination}                        xpath://*[@id="content_inner"]/section[1]/div/div/div[2]/div[2]/div/label
${ShopPage.btnDenominationAmout}                   xpath://*[@id="id_attr_denomination"]
${ShopPage.btnQuantity}                            xpath://*[@id="id_quantity"]
${ShopPage.lblAddToCart}                           xpath://*[@id="add-to-cart"]/div[2]/div/button
${ShopPage.icnCloseDiscount}                       xpath:/html/body/div[4]/div/div[2]/div/div/div/div/div/button

*** Keywords ***
Verify Product
    Sleep       5s
    SeleniumLibrary.Click Element                             ${ShopPage.icnCloseDiscount}
    SeleniumLibrary.Wait Until Element Is visible             ${ShopPage.lblProductTitle}
    SeleniumLibrary.Element Should Contain                    ${ShopPage.lblProductTitle}                       ${ShopPage['lblProductTitle']}

Click Product
    SeleniumLibrary.Click Element                             ${ShopPage.lblProductTitle}

Verify Product Detail
    SeleniumLibrary.Wait Until Element Is visible             ${ShopPage.lblProductDetail}
    SeleniumLibrary.Element Should Contain                    ${ShopPage.lblProductDetail}                      ${ShopPage['lblProductDetail']}
    SeleniumLibrary.Wait Until Element Is visible             ${ShopPage.lblDenomination}
    SeleniumLibrary.Element Should Contain                    ${ShopPage.lblDenomination}                       ${ShopPage['lblDenomination']}  
    SeleniumLibrary.Wait Until Element Is visible             ${ShopPage.btnDenominationAmout}
    SeleniumLibrary.Wait Until Element Is visible             ${ShopPage.btnQuantity}
    SeleniumLibrary.Wait Until Element Is visible             ${ShopPage.lblAddToCart}
    SeleniumLibrary.Element Should Contain                    ${ShopPage.lblAddToCart}                          ${ShopPage['lblAddToCart']}

Select Denomination
    SeleniumLibrary.Wait Until Element Is visible             ${ShopPage.btnDenominationAmout}
    SeleniumLibrary.Click Element                             ${ShopPage.btnDenominationAmout} 
    SeleniumLibrary.Select From List By Label                 ${ShopPage.btnDenominationAmout}                  $25.00                   

Select Quantity
    SeleniumLibrary.Wait Until Element Is visible             ${ShopPage.btnQuantity}
    SeleniumLibrary.Click Element                             ${ShopPage.btnQuantity}
    SeleniumLibrary.Select From List By Label                 ${ShopPage.btnQuantity}                           2                       

Click Add Product
    SeleniumLibrary.Wait Until Element Is visible             ${ShopPage.lblAddToCart}
    SeleniumLibrary.Click Element                             ${ShopPage.lblAddToCart}


