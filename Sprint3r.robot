*** Settings ***
Library    Selenium2Library
#Test Teardown       Close Browser

*** Variables ***
${BROWSER}            Chrome      #phantomjs   
${GOOGLE URL}    http://www.google.com

*** Test case ***
Search
    เข้าไป google
    ค้นหาคำว่าsprint3r
    รอจนกว่าจะเจอคำว่าsprint3r

*** Keywords ***
เข้าไป google
    Open Browser    ${GOOGLE URL}    ${BROWSER}
ค้นหาคำว่าsprint3r
    Input Text                  lst-ib    sprint3r
    Click Button                btnG
รอจนกว่าจะเจอคำว่าsprint3r
    Wait Until Page Contains     sprint3r