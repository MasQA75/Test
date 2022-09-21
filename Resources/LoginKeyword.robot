*** Settings ***

Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py



*** Keywords ***

Open my browse
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
enter user name
    [Arguments]    ${uername}
    Input Text    ${Login_username}    ${uername}

enter user password
    [Arguments]    ${password}
    Input Text    ${Login_pasword}    ${password}

click sumbit
    Click Button    ${button_sumbit}

verify succefull login

    Element Should Be Visible    Login Successfully
close my browser

  Close All Browsers
Accept Cookies
     Wait Until Page Contains Element   ${ACCEPT_COOKIES_BUTTON}
     Click Element   ${ACCEPT_COOKIES_BUTTON}
     ${cookie_banner_closed}     Run Keyword And Return Status   Wait Until Page /*continued*/
     Does Not Contain Element   ${ACCEPT_COOKIES_BUTTON}     2s
     Run Keyword If      ${cookie_banner_closed}==False 
     Click Element   ${ACCEPT_COOKIES_BUTTON}
    