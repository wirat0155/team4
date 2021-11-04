**Settings**
Library                     Selenium2Library

**Variables**
${agn_company_name}         ร่ำรวย จำกัด11
${agn_tax}                  1234567890123
${agn_address}              111/1 ต.แสนสุข อ.เมืองชลบุรี จ.ชลบุรี
${agn_firstname}            A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happyu
${agn_lastname}             หมั่นเพียร
${agn_tel}                  0812345678
${agn_email}                kayan@gmail.com
${agn_firstname_lastname}   A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happyu หมั่นเพียร
${agn_tel_format}           081-234-5678

**Keywords**
add_agent_agn_firstname_length_256 
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
Case CDMS-04-03-26
    Open Browser                                    http://localhost/code_team4/public/Agent_show/agent_show_ajax           chrome
    sleep                                           1s
    add_agent_agn_firstname_length_256
    Element Text Should Be                          //*[@id="agent_section"]/div[2]/div[2]/div[2]/label            Too long container number
    sleep                                           1s