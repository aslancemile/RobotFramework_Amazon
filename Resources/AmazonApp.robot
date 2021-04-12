*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Search for Products
    Go To  https://www.amazon.com.tr
    Wait Until Page Contains  Çok Satanlar
    Input Text  id=twotabsearchtextbox  iPhone 12
    Click Button  xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains  Aranan ürün: "iPhone 12"

Select Product from Search Results
    Click Link  css=#search > div.s-desktop-width-max.s-opposite-dir > div > div.s-matching-dir.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(2) > div > span > div > div > div:nth-child(3) > h2 > a
    Wait Until Page Contains  Sonuçlara dön

Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Sepete Eklendi

Begin Checkout
    Click Link  css=#hlb-ptc-btn-native

