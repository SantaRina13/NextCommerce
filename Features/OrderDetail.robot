*** Settings ***
Resource    ${CURDIR}/../Pages/OrderDetail.robot

*** Keywords ***
Verify Order Detail
    OrderDetail.Verify Your Order

Clear Cart
    OrderDetail.Clear Your Order

Click Proceed To Checkout
    OrderDetail.Click Proceed