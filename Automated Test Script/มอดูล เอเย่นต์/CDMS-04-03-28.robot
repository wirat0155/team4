**Settings**
Library                     Selenium2Library

**Variables**
${agn_company_name}         ร่ำรวย จำกัด13
${agn_tax}                  1234567890123
${agn_address}              111/1 ต.แสนสุข อ.เมืองชลบุรี จ.ชลบุรี
${agn_firstname}            ขยัน
${agn_lastname}             
${agn_tel}                  0812345678
${agn_email}                kayan@gmail.com
${agn_firstname_lastname}   ขยัน
${agn_tel_format}           081-234-5678

**Keywords**
add_agent_agn_lastname_length_0 
    Click Element       xpath=//*[@id="Agent_list_table_filter"]/a
    sleep               1s
    Input Text          name=agn_company_name       ${agn_company_name}     
    Input Text          name=agn_tax                ${agn_tax}      
    Input Text          name=agn_address            ${agn_address}        
    Input Text          name=agn_firstname          ${agn_firstname}       
    Input Text          name=agn_lastname           ${agn_lastname}   
    Input Text          name=agn_tel                ${agn_tel}     
    Input Text          name=agn_email              ${agn_email} 
    Click Button        class=positive


**Test Cases**
Case CDMS-04-03-28
    Open Browser                                    http://localhost/code_team4/public/Agent_show/agent_show_ajax           chrome
    sleep                                           1s
    add_agent_agn_lastname_length_0
    Element Text Should Be                          //*[@id="agent_section"]/div[2]/div[2]/div[4]/label            Please enter a last name
    sleep                                           1s