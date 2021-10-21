**Settings**
Library                     Selenium2Library

**Variables**
${agn_company_name}         เนคเทค
${agn_tax}                  งานเยอะจังเลยครับ
${agn_address}              127/12 ต.แสนสุข ชลบุรี
${agn_firstname}            อัศวิน
${agn_lastname}             วงศ์สว่าง
${agn_tel}                  0908889888
${agn_email}                asawin@nectec.com
${agn_firstname_lastname}   อัศวิน วงศ์สว่าง
${agn_tel_format}           090-888-9888

**Keywords**
update_agent_wrong_agn_tax_format
    Click Element       xpath=//*[@id="Agent_list_table"]/tbody/tr[1]
    sleep               1s
    Click Element       xpath=/html/body/div[1]/div[3]/div/div/div[1]/div/div/a
    sleep               1s
    Input Text          name=agn_company_name       ${agn_company_name}     
    Input Text          name=agn_tax                ${agn_tax}      
    Input Text          name=agn_address            ${agn_address}        
    Input Text          name=agn_firstname          ${agn_firstname}       
    Input Text          name=agn_lastname           ${agn_lastname}   
    Input Text          name=agn_tel                ${agn_tel}     
    Input Text          name=agn_email              ${agn_email} 
    Click Button        xpath=//*[@id="add_agent_form"]/div/div/div/div[2]/button


**Test Cases**
Case CDMS-04-04-15
    Open Browser                                    http://localhost/code_team4/public/Agent_show/agent_show_ajax           chrome
    sleep                                           1s
    update_agent_wrong_agn_tax_format
    Element Text Should Be                          xpath=//*[@id="agent_form"]/div[2]/div/div[1]/div[2]/div/label            Please enter number
    sleep                                           1s