**Settings**
Library                     Selenium2Library

**Variables**
${agn_company_name}         Fanta
${agn_tax}                  1234567891011
${agn_address}              68/1 ตำบลอ่างศิลา อำเภอเมืองชลบุรี จังหวัดชลบุรี 20000
${agn_firstname}            นวมินทร์
${agn_lastname}             A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy.
${agn_tel}                  0812345678
${agn_email}                nwamin29@gmail.com
${agn_firstname_lastname}   นวมินทร์ A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy.
${agn_tel_format}           081-234-5678

**Keywords**
update_agent_agn_lastname_length_256
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
    Click Button      xpath=//*[@id="car_action"]/button


**Test Cases**
Case CDMS-04-04-33
    Open Browser                                    http://localhost/code_team4/public/Agent_show/agent_show_ajax           chrome
    sleep                                           1s
    update_agent_agn_lastname_length_256
    Element Text Should Be                          xpath=//*[@id="add_agent_form"]/div[2]/div/div[2]/div[3]/div/label                  Please enter 1 - 255 Character long
    sleep                                           1s