**Settings**
Library                     Selenium2Library

**Variables**
${agn_company_name}         เนคเทค
${agn_tax}                  1234567890123
${agn_address}              
${agn_firstname}            อัศวิน
${agn_lastname}             วงศ์สว่าง
${agn_tel}                  0908889888
${agn_email}                asawin@nectec.com
${agn_firstname_lastname}   อัศวิน วงศ์สว่าง
${agn_tel_format}           090-888-9888

**Keywords**
add_agent_agn_address_length_0
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
Case CDMS-04-03-09
    Open Browser                                    http://localhost/code_team4/public/Agent_show/agent_show_ajax           chrome
    sleep                                           1s
    add_agent_agn_address_length_0
    Element Text Should Be                          //*[@id="agent_section"]/div[2]/div[1]/div[6]/label                         Please enter an address
    sleep                                           1s