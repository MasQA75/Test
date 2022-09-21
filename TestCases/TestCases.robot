*** Settings ***
Library    SeleniumLibrary

Resource    ../Resources/LoginKeyword.robot

*** Variables ***

${url}    https://demo.guru99.com/test/newtours/index.php
${browser}    chrome
${username}    tutorial
${password}    tutorial



*** Test Cases ***
LoginTest

    #FOR     ${i}    IN RANGE     5
    Open my browse    ${url}    ${browser}
    enter user name    ${username}
    enter user password    ${password}
      

     sleep    3
   
   
   
    #click sumbit
    #verify succefull login
    close my browser
    Close All Browsers
    
    
