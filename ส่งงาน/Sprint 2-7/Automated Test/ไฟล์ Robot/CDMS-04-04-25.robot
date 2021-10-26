*** Settings ***
Library           Selenium2Library

*** Variables ***
${agn_company_name}    A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy
${agn_tax}        1234567891011
${agn_address}    68/1 ตำบลอ่างศิลา อำเภอเมืองชลบุรี จังหวัดชลบุรี 20000
${agn_firstname}    นวมินทร์
${agn_lastname}    อินทราทิพย์
${agn_tel}        0812345678
${agn_email}      nwamin29@gmail.com
${agn_firstname_lastname}    นวมินทร์ อินทราทิพย์
${agn_tel_format}    081-234-5678

*** Keywords ***
update_agent_agn_tel_length_8
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
Case CDMS-04-04-36
    Open Browser    http://localhost/code_team4/public/Agent_show/agent_show_ajax    chrome
    sleep    1s
    update_agent_agn_tel_length_8
    Element Text Should Be    xpath=//*[@id="add_agent_form"]/div[2]/div/div[2]/div[4]/div/div/label
    sleep    1s
