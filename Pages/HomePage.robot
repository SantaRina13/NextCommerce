*** Settings ***
Library    SeleniumLibrary
Variables    ${CURDIR}/../Resources/Translation/Store.yaml

*** Variables ***
${HomePage.url}                              https://aptest.29next.store/
${HomePage.browser}                          chrome
${HomePage.lblHeader}                        xpath:/html/body/div/div/div/div/div
${HomePage.icnHome}                          xpath://*[@id="navbarMain"]/a/picture/img
${HomePage.lblHome}                          xpath://*[@id="navbarMain"]/ul[1]/li[1]/a
${HomePage.lblShop}                          xpath://*[@id="navbarMain"]/ul[1]/li[2]/a
${HomePage.lblSupport}                       xpath://*[@id="navbarMain"]/ul[1]/li[3]/a
${HomePage.icnMagnify}                       xpath://*[@id="navbarMain"]/ul[2]/li[1]/a
${HomePage.icnProfile}                       xpath://*[@id="navbarAccount"]
${HomePage.icnBasket}                        xpath://*[@id="navbarMain"]/ul[2]/li[3]/a
${HomePage.lblDescriptionTitle}              xpath:/html/body/section[1]/div[2]/div/div/div/h1
${HomePage.lblDescriptionDetail}             xpath:/html/body/section[1]/div[2]/div/div/div/p
${HomePage.lblShopAll}                       xpath:/html/body/section[1]/div[2]/div/div/div/div/a

*** Keywords ***
Open Page
    Open Browser                    ${HomePage.url}           ${HomePage.browser} 
    Sleep           3s

Verify Home Page
    SeleniumLibrary.Wait Until Element Is visible             ${HomePage.lblHeader}
    SeleniumLibrary.Element Should Contain                    ${HomePage.lblHeader}                       ${HomePage['lblHeader']}
    SeleniumLibrary.Wait Until Element Is visible             ${HomePage.icnHome}
    SeleniumLibrary.Wait Until Element Is visible             ${HomePage.lblHome}
    SeleniumLibrary.Element Should Contain                    ${HomePage.lblHome}                         ${HomePage['lblHome']}
    SeleniumLibrary.Wait Until Element Is visible             ${HomePage.lblShop}
    SeleniumLibrary.Element Should Contain                    ${HomePage.lblShop}                         ${HomePage['lblShop']}
    SeleniumLibrary.Wait Until Element Is visible             ${HomePage.lblSupport}
    SeleniumLibrary.Element Should Contain                    ${HomePage.lblSupport}                      ${HomePage['lblSupport']}
    SeleniumLibrary.Wait Until Element Is visible             ${HomePage.icnMagnify}
    SeleniumLibrary.Wait Until Element Is visible             ${HomePage.icnProfile}
    SeleniumLibrary.Wait Until Element Is visible             ${HomePage.icnBasket}
    SeleniumLibrary.Wait Until Element Is visible             ${HomePage.lblDescriptionTitle}
    SeleniumLibrary.Element Should Contain                    ${HomePage.lblDescriptionTitle}             ${HomePage['lblDescriptionTitle']}
    SeleniumLibrary.Wait Until Element Is visible             ${HomePage.lblDescriptionDetail}
    SeleniumLibrary.Element Should Contain                    ${HomePage.lblDescriptionDetail}            ${HomePage['lblDescriptionDetail']}
    SeleniumLibrary.Wait Until Element Is visible             ${HomePage.lblShopAll}
    SeleniumLibrary.Element Should Contain                    ${HomePage.lblShopAll}                      ${HomePage['lblShopAll']}

Click Shop All
    SeleniumLibrary.Click Element                             ${HomePage.lblShopAll}


