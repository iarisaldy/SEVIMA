*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}   Safari

*** Test Cases ***
robotframework-testing_selenium
    Open Browser  https://qa.putraprima.id/  ${BROWSER}
    Maximize Browser Window
    click Element       id=input
    click Element       id=hitung
    click Element       id=input
    Sleep  5s
    Input Text          id=input    A
    click Element       id=hitung
    click Element       id=input
    Sleep  5s
    Input Text          id=input    123
    click Element       id=hitung
    Click Element       id=input
    Sleep  5s
    Input Text          id=input    😊
    Click Element       id=hitung
    Sleep  5s
    Click Element       link=Terms Of Service
    Click Element       link=Privacy Policy
    Close Browser