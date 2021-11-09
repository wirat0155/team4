**Settings**
Library                     Selenium2Library

**Variables**
${agn_company_name}         ร่ำรวย จำกัด
${agn_tax}                  123456789012
${agn_address}              111/1 ต.แสนสุข อ.เมืองชลบุรี จ.ชลบุรี
${agn_firstname}            ขยัน
${agn_lastname}             หมั่นเพียร
${agn_tel}                  0908889888
${agn_email}                kayan@gmail.com
${agn_firstname_lastname}   ขยัน หมั่นเพียร
${agn_tel_format}           0812345678

**Keywords**
add_agent_agn_tax_length_12
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
Case CDMS-04-03-16
    Open Browser                                    http://localhost/code_team4/public/Agent_show/agent_show_ajax           chrome
    sleep                                           1s
    add_agent_agn_tax_length_12
    Element Text Should Be                          //*[@id="agent_section"]/div[2]/div[1]/div[4]/label            Please enter 13 digit long
    sleep                                           1s