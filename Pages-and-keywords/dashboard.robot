*** Settings ***

*** variables ***
${dashboard_pg_label_on_page}                      Dashboard
${dashboard_pg_logout_menu}                        xpath=//a[@class='dropdown-toggle']
${dashboard_pg_logout_submenu}                     xpath=//i[@class='fa fa-sign-out fa-fw']
${dashboard_pg_top_link_to_index}                  xpath=//a[@class='navbar-brand']   
${dashboard_pg_left_link_dashboard}                xpath=//i[@class='fa fa-dashboard fa-fw']
${dashboard_pg_left_link_reservation}              xpath=//i[@class='fa fa-university fa-fw']
${dashboard_pg_left_link_client}                   xpath=//i[@class='fa fa-male fa-fw']
${Reservation_index_edit_form_pg_button}           xpath=//a[text()='Index']
${reservation_pg_label_on_page}                    List
${dashboard_pg_left_link_bill}                     xpath=//i[@class='fa fa-credit-card fa-fw']

*** keywords ***
perform_logout
    Page should contain element                    ${dashboard_pg_logout_menu}
    click element                                  ${dashboard_pg_logout_menu}
    Wait Until Page Contains Element               ${dashboard_pg_logout_submenu}
    click element                                  ${dashboard_pg_logout_submenu}
    Wait Until Page Contains                       ${login_pg_login_label}     
    Title Should be                                ${login_pg_title} 
    
navigate_to_dasboard_page_link_left
    Page should contain element                    ${dashboard_pg_left_link_dashboard}
    click element                                  ${dashboard_pg_left_link_dashboard}   
    Wait until page contains                       ${dashboard_pg_label_on_page}

    
navigate_to_reservation_page_link_left
    Page should contain element                    ${dashboard_pg_left_link_reservation}
    click element                                  ${dashboard_pg_left_link_reservation}
    Wait until page contains                       ${reservation_pg_label_on_page}  
    

 navigate_to_client_page_link_left
    Page should contain element                    ${dashboard_pg_left_link_client}
    click element                                  ${dashboard_pg_left_link_client}
    Wait until page contains                       ${client_list_pg_label_on_page}   

navigate_to_bill_page_link_left
    Page should contain element                    ${dashboard_pg_left_link_bill}
    click element                                  ${dashboard_pg_left_link_bill} 
   Wait until page contains                        ${bill_pg_label_on_page}  
    