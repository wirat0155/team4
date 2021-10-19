**Settings**
Library                     Selenium2Library

**Variables**
${agn_company_name}         Fanta
${agn_tax}                  1234567891011
${agn_address}              68/1 ตำบลอ่างศิลา อำเภอเมืองชลบุรี จังหวัดชลบุรี 20000
${agn_firstname}            นวมินทร์
${agn_lastname}             อินทราทิพย์
${agn_tel}                  nwamin1234
${agn_email}                nwamin29@gmail.com
${agn_firstname_lastname}   นวมินทร์ อินทราทิพย์
${agn_tel_format}           081-234-5678

**Keywords**
add_agent_wrong_agn_tel_format
    Click Element       xpath=//*[@id="Agent_list_table_filter"]/a
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
Case CDMS-04-03-34
    Open Browser                                    http://localhost/code_team4/public/Agent_show/agent_show_ajax           chrome
    sleep                                           1s
    add_agent_wrong_agn_tel_format
    Element Text Should Be                          xpath=//*[@id="agent_section"]/div[2]/div[2]/div[6]/div/label             Please enter a contact number
    sleep                                           1s