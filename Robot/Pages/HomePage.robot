*** Settings ***
Library    SeleniumLibrary
Resource    ${CURDIR}/../Recources/Translation/Store.yaml

*** Variables ***
${HomePage.url}                              https://aptest.29next.store/
${HomePage.browser}                          chrome
${HomePage.lblHeader}                        xpath:/html/body/div/div/div/div/div 
${HomePage.icnHome}                          xpath://*[@id="navbarMain"]/a/picture/img
${HomePage.lblHome}                          xpath://*[@id="navbarMain"]/ul[1]/li[1]/a
${HomePage.lblShop}                          xpath://*[@id="navbarMain"]/ul[1]/li[2]/a
${HomePage.lblSupport}                       xpath://*[@id="navbarMain"]/ul[1]/li[3]/a
${HomePage.icnMagnify}                       xpath://*[@id="navbarMain"]/ul[2]/li[1]/a/div/svg
${HomePage.icnProfile}                       xpath://*[@id="navbarAccount"]/span[1]/svg
${HomePage.icnBasket}                        xpath://*[@id="navbarMain"]/ul[2]/li[3]/a/span[1]/svg
${HomePage.lblDescriptionTitle}              xpath:/html/body/section[1]/div[2]/div/div/div/h1
${HomePage.lblDescriptionDetail}             xpath:/html/body/section[1]/div[2]/div/div/div/p
${HomePage.lblShopAll}                       xpath://*[@id="navbarMain"]/ul[2]/li[3]/a/span[1]/svg

*** Keywords ***
Open Page
    Open Browser                    ${HomePage.url}           ${HomePage.browser} 
    Sleep           3s

Verify Home Page
    Wait Until Element Is Ready             ${HomePage.lblHeader}
    Element Should Contain Text             ${HomePage.lblHeader}                       ${HomePage['lblHeader']}
    Wait Until Element Is Ready             ${HomePage.icnHome}
    Wait Until Element Is Ready             ${HomePage.lblHome}
    Element Should Contain Text             ${HomePage.lblHome}                         ${HomePage['lblHome']}
    Wait Until Element Is Ready             ${HomePage.lblShop}
    Element Should Contain Text             ${HomePage.lblShop}                         ${HomePage['lblShop']}
    Wait Until Element Is Ready             ${HomePage.lblSupport}
    Element Should Contain Text             ${HomePage.lblSupport}                      ${HomePage['lblSupport']}
    Wait Until Element Is Ready             ${HomePage.icnMagnify}
    Wait Until Element Is Ready             ${HomePage.icnProfile}
    Wait Until Element Is Ready             ${HomePage.icnBasket}
    Wait Until Element Is Ready             ${HomePage.lblDescriptionTitle}
    Element Should Contain Text             ${HomePage.lblDescriptionTitle}             ${HomePage['lblDescriptionTitle']}
    Wait Until Element Is Ready             ${HomePage.lblDescriptionDetail}
    Element Should Contain Text             ${HomePage.lblDescriptionDetail}            ${HomePage['lblDescriptionDetail']}
    Wait Until Element Is Ready             ${HomePage.lblShopAll}
    Element Should Contain Text             ${HomePage.lblShopAll}                      ${HomePage['lblShopAll']}

Click Shop All
    Click Element When Ready                ${HomePage.lblShopAll}


