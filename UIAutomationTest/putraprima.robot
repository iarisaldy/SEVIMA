*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}   Safari
${URL}       https://qa.putraprima.id/
${FIELD}     id=input
${BUTTON}    id=hitung
${RESULT}    id=result

*** Test Cases ***
Open Website https://qa.putraprima.id/ success
    Keywords Open Browser
    Capture Page Screenshot
    Close Browser

Click Terms Of Service
    Keywords Open Browser
    Click Element       link=Terms Of Service
    Capture Page Screenshot
    Close Browser

Click Privacy Policy
    Keywords Open Browser
    Click Element       link=Privacy Policy
    Capture Page Screenshot
    Close Browser

Hitung faktorial empty string
    Keywords Open Browser
    Hitung Faktorial    ${null}
    Capture Page Screenshot
    Close Browser

Hitung faktorial Huruf
    Keywords Open Browser
    Hitung Faktorial    ABC
    Capture Page Screenshot
    Close Browser

Hitung faktorial uniq karakter
    Keywords Open Browser
    Hitung Faktorial    !@#
    Capture Page Screenshot
    Close Browser

Hitung faktorial emoji
    Keywords Open Browser
    Hitung Faktorial    😊
    Capture Page Screenshot
    Close Browser

Hitung faktorial angka 5
    Keywords Open Browser
    Hitung Faktorial    5
    Capture Page Screenshot
    Close Browser

Hitung faktorial angka 10
    Keywords Open Browser
    Hitung Faktorial    10
    Verifikasi          Faktorial dari 10 adalah: 3628800
    Capture Page Screenshot
    Close Browser

Hitung faktorial angka 20
    Keywords Open Browser
    Hitung Faktorial    20
    Capture Page Screenshot
    Close Browser

Hitung faktorial angka 171
    Keywords Open Browser
    Hitung Faktorial    171
    Capture Page Screenshot
    Close Browser

Hitung faktorial angka minus
    Keywords Open Browser
    Hitung Faktorial    -10
    Capture Page Screenshot
    Close Browser

*** Keywords ***
Keywords Open Browser
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Hitung Faktorial
    [Arguments]         ${input}
    Click Element       ${FIELD} 
    Input Text          ${FIELD}    ${input}
    click Element       ${BUTTON}
    Wait Until Element Is Visible   ${RESULT}

Verifikasi
    [Arguments]       ${TEXT}
    ${VERIFIKASI}=    Get Text    ${RESULT}
    Should Be Equal   ${VERIFIKASI}  ${TEXT}


