*** Settings ***
Library                        RequestsLibrary
Library                        Collections
Library                        OperatingSystem
Library                        String

Documentation                  Endpoint hitung faktorial pada website https://qa.putraprima.id/

*** Variables ***
${url}                         https://qa.putraprima.id/faktorial

*** Test Cases ***
POST faktorial success
    [Documentation]     Hitung Faktorial
    create session      putraprima             ${url}
    ${headers}=         Create Dictionary      Content-Type=application/json
    ${resp}=            POST On Session        putraprima    ${url}     data={"number": "1"}    headers=${headers}     expected_status=200

    Log to console  ${resp.json()}

POST faktorial success number 10
    [Documentation]     Hitung Faktorial
    create session      putraprima             ${url}
    ${headers}=         Create Dictionary      Content-Type=application/json
    ${resp}=            POST On Session        putraprima    ${url}     data={"number": "10"}    headers=${headers}     expected_status=200

    Log to console  ${resp.json()}

POST faktorial success number 20
    [Documentation]     Hitung Faktorial
    create session      putraprima             ${url}
    ${headers}=         Create Dictionary      Content-Type=application/json
    ${resp}=            POST On Session        putraprima    ${url}     data={"number": "20"}    headers=${headers}     expected_status=200

    Log to console  ${resp.json()}

POST faktorial success >170
    [Documentation]     Hitung Faktorial
    create session      putraprima             ${url}
    ${headers}=         Create Dictionary      Content-Type=application/json
    ${resp}=            POST On Session        putraprima    ${url}     data={"number": "171"}    headers=${headers}     expected_status=200

    Log to console  ${resp.json()}

POST faktorial fail Method Not Allowed 
    [Documentation]     Hitung Faktorial gagal
    create session      putraprima             ${url}
    ${headers}=         Create Dictionary      Content-Type=application/json
    ${resp}=            GET On Session        putraprima    ${url}     data={"number": "1"}    headers=${headers}     expected_status=405

