*** Settings ***
Library           Selenium2Library

*** Variables ***
${agn_company_name}    Fanta
${agn_tax}        1234567891011
${agn_address}    68/1 ตำบลอ่างศิลา อำเภอเมืองชลบุรี จังหวัดชลบุรี 20000
${agn_firstname}    นวมินทร์
${agn_lastname}    อินทราทิพย์
${agn_tel}        0812345678
${agn_email}      nwamin12345678912345678912345@gmail.com
${agn_firstname_lastname}    นวมินทร์ อินทราทิพย์
${agn_tel_format}    081-234-5678

*** Keywords ***
update_agent_agn_email_length_39
    Click Element    xpath=//*[@id="Agent_list_table"]/tbody/tr[1]
    sleep    1s
    Click Element    xpath=/html/body/div[1]/div[3]/div/div/div[1]/div/div/a
    sleep    1s
    Input Text    name=agn_company_name    ${agn_company_name}
    Input Text    name=agn_tax    ${agn_tax}
    Input Text    name=agn_address    ${agn_address}
    Input Text    name=agn_firstname    ${agn_firstname}
    Input Text    name=agn_lastname    ${agn_lastname}
    Input Text    name=agn_tel    ${agn_tel}
    Input Text    name=agn_email    ${agn_email}
    Click Button    xpath=//*[@id="car_action"]/button
    sleep    2s

*** Test Cases ***
Case CDMS-04-04-44
    Open Browser    http://localhost/code_team4/public/Agent_show/agent_show_ajax    chrome
    sleep    1s
    update_agent_agn_email_length_39
    Element Text Should Be    xpath=//*[@id="Agent_list_table"]/tbody/tr[1]/td[6]    nwamin12345678912345678912345@gmail.com
    sleep    1s
