*** Settings ***
Library           Selenium2Library

*** Variables ***
${agn_company_name}    เนคเทค
${agn_tax}        1234567890123
${agn_address}    123/8 ต.แสนสุข อ.เมืองชลบุรี จ.ชลบุรี
${agn_firstname}    อัศวิน
${agn_lastname}    วงศ์สว่าง
${agn_tel}        0908889888
${agn_email}      asawin@nectec.com
${agn_firstname_lastname}    อัศวิน วงศ์สว่าง
${agn_tel_format}    090-888-9888

*** Keywords ***
update_agent_success
    Click Element    xpath=//*[@id="Agent_list_table"]/tbody/tr[1]
    sleep    2s
    Click Element    xpath=/html/body/div[1]/div[3]/div/div/div[1]/div/div/a
    sleep    2s
    Input Text    name=agn_company_name    ${agn_company_name}
    sleep    2s
    Input Text    name=agn_tax    ${agn_tax}
    sleep    2s
    Input Text    name=agn_address    ${agn_address}
    sleep    2s
    Input Text    name=agn_firstname    ${agn_firstname}
    sleep    2s
    Input Text    name=agn_lastname    ${agn_lastname}
    sleep    2s
    Input Text    name=agn_tel    ${agn_tel}
    sleep    2s
    Input Text    name=agn_email    ${agn_email}
    sleep    2s
    Click Button    xpath=//*[@id="car_action"]/button
    sleep    2s

*** Test Cases ***
Case CDMS-04-04-17
    Open Browser    http://localhost/code_team4/public/Agent_show/agent_show_ajax    chrome
    sleep    2s
    update_agent_success
    Element Text Should Be    xpath=//*[@id="Agent_list_table"]/tbody/tr[1]/td[2]    ${agn_company_name}
    Element Text Should Be    xpath=//*[@id="Agent_list_table"]/tbody/tr[1]/td[3]    ${agn_firstname_lastname}
    Element Text Should Be    xpath=//*[@id="Agent_list_table"]/tbody/tr[1]/td[4]    0
    Element Text Should Be    xpath=//*[@id="Agent_list_table"]/tbody/tr[1]/td[5]    ${agn_tel_format}
    Element Text Should Be    xpath=//*[@id="Agent_list_table"]/tbody/tr[1]/td[6]    ${agn_email}
    sleep    2s
