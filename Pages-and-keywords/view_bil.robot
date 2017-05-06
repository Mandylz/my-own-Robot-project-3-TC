*** Variables ***
${bill_pg_label_on_view}                       View
${bill_view_pg_field_id}                       xpath=//*[@id="j_idt50"]/table/tbody/tr[1]/td[2]/span
${bill_pg_label_on_page}                       List
${bill_list_pg_button_view}                    xpath=//*[@id="j_idt49"]/table/tbody/tr/td[7]/a[1]
${bill_list_pg_field_id}                       xpath=//*[@id="j_idt49"]/table/tbody/tr[1]/td[1]



*** keywords ***
view_bill
    Page should contain element                ${bill_list_pg_button_view}
    ${bill_list_pg_field_id_text}=             Get Text                                   ${bill_list_pg_field_id}
    Click element                              ${bill_list_pg_button_view}
    Wait until page contains                   ${bill_pg_label_on_view}
   Element text should be                      ${bill_view_pg_field_id}               ${bill_list_pg_field_id_text}