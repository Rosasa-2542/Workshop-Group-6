*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.allonline.7eleven.co.th/
${BROWSER}    chrome
${XPATH_ELEMENT_SOY}    //*[@id="page"]/div[2]/div[2]/div/div/div[2]/div/div/div/div/div/div[3]/div[2]/div/a[2]/div
${XPATH_ELEMENT_MEO}    //*[@id="page"]/div[2]/div[2]/div/div/div[2]/div/div/div/div/div/div[3]/div[3]/div/a[2]/div

*** Test Cases ***
ทดสอบการสั่งซื้อสินค้า ซอยแคท อาหารแมว 1 มิกซ์ 1 กก. 2 ชิ้น และ มีโอ อาหารแมวปลาทูน่า 1 กก. 1 ชิ้น โดยเลือกรับที่ร้านและชำระเงินด้วย ทรูมันนี่วอลเล็ท
    เปิดเว็บเบราว์เซอร์และเข้า All Online
    ใส่คำค้นหาซอยแคท 
    กดปุ่ม Enter
    เลือกสินค้าซอยแคท อาหารแมว 1 มิกซ์ 1 กก.
    เพิ่มสินค้าอีก 1 ชิ้น
    กดซอยแคทเข้าตะกร้า
    ใส่คำค้นหา มีโอ อาหารแมวปลาทูน่า 1 กก.
    กดปุ่ม Enter มีโอ
    เลือกสินค้า มีโอ อาหารแมวปลาทูน่า 1 กก.
    กดมีโอเข้าตะกร้่า
    กดชำระสินค้า
    เข้าสู่ระบบ
    เลือกรับสินค้าที่สาขาของเซเว่น
    ดำเนินการชำระเงิน
    ชำระเงินด้วยทรูมันนี่และใส่เบอร์โทรศัพท์
*** Keywords ***
เปิดเว็บเบราว์เซอร์ และเข้า All Online
   Open Browser    url=${URL}    browser=${BROWSER}

ใส่คำค้นหาซอยแคท
    input text    name=q    ซอยแคท

กดปุ่ม Enter
    Press keys    None    RETURN

เลือกสินค้าซอยแคท อาหารแมว 1 มิกซ์ 1 กก.
    Click Element    //*[@id="alert-cookie-gdpr-allonline__button"]
    Scroll Element Into View    ${XPATH_ELEMENT_SOY}
    Click Element    ${XPATH_ELEMENT_SOY} 
    Sleep    5s

เพิ่มสินค้าอีก 1 ชิ้น
    Click Element    //*[@id="article-form"]/div[2]/div[2]/div[1]/span[2]/a

กดซอยแคทเข้าตะกร้า
    Click Button     //*[@id="article-form"]/div[2]/div[2]/div[4]/div[1]/button
    Sleep    5s

ใส่คำค้นหา มีโอ อาหารแมวปลาทูน่า 1 กก.
    Input Text    name=q    มีโอ อาหารแมวปลาทูน่า 1 กก.

กดปุ่ม Enter มีโอ
    Press keys    None    RETURN

เลือกสินค้า มีโอ อาหารแมวปลาทูน่า 1 กก.   
    Scroll Element Into View    ${XPATH_ELEMENT_MEO}
    Click Element    ${XPATH_ELEMENT_MEO}  

กดมีโอเข้าตะกร้่า
    Click Button   //*[@id="article-form"]/div[2]/div[2]/div[4]/div[1]/button
    Sleep    5s

กดชำระสินค้า
    Click Element    //*[@id="mini-basket-val"]/li[5]/a[2]
    Sleep    3s

เข้าสู่ระบบ
    input text    //*[@id="__next"]/div/div/div[2]/div[2]/div/div/div/div[4]/input    rosapapawee@gmail.com
    input text    //*[@id="__next"]/div/div/div[2]/div[2]/div/div/div/div[5]/input    Rosa2542@
    Click Element   //*[@id="__next"]/div/div/div[2]/div[2]/div/div/div/div[6]/a[1]
    Sleep    5s

เลือกรับสินค้าที่สาขาของเซเว่น
    Click Element    //*[@id="storefinder-selector-group"]/div[2]/div/button/div[2]
    Sleep    5s
    Click Element    //*[@id="js-search-result-container"]/div[2]
    Sleep    5s
    Click Element    //*[@id="js-store-selected-btn"]
    Sleep    5s

ดำเนินการชำระเงิน
    Click Element    //*[@id="continue-payment-btn"]
    Sleep    3s

ชำระเงินด้วยทรูมันนี่และใส่เบอร์โทรศัพท์
    Click Element    //*[@id="payment-options"]/div[2]/button/div[2]  
    Sleep    5s
    Input Text    //*[@id="checkoutData.paymentData.trueMoneyMobileNumber"]    0909069991
    Sleep    5s
    Close Browser





    