*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
[TCs_01] - Đăng nhập Guru 99
    [Documentation]    Đăng nhập Guru 99
    [Tags]    demo_Guru99_tag
    truy cập vào trang demo.guru99.com
    nhập vào ô Email address "Hanglt@gmail.com"
    nhập vào ô Password "11111111"
    ấn button Signin
    Verify màn hình có chứa dòng chữ "Successfully Logged in..."
    Sleep    5s
    Close Browser

*** Keywords ***
truy cập vào trang demo.guru99.com
    Open Browser    https://demo.guru99.com/test/login.html    firefox

nhập vào ô Email address "Hanglt@gmail.com"
    Input Text    //input[@data-validate="isEmail"]    Hanglt@gmail.com

nhập vào ô Password "11111111"
    Input Password    //input[@id="passwd"]    11111111

ấn button Signin
    Click Button    //button[@name="SubmitLogin"]

Verify màn hình có chứa dòng chữ "Successfully Logged in..."
    Wait Until Element Is Visible    //h3[contains(text(), "Successfully Logged in...")]
