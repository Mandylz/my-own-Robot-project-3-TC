*** Settings ***
Library                                        Selenium2Library
Library                                        OperatingSystem
Library                                        String

Resource                                       ./Pages-and-keywords/Test_setup-and-teardown.robot
Resource                                       ./Pages-and-keywords/page-login.robot  
Resource                                       ./Pages-and-keywords/dashboard.robot
Resource                                       ./Pages-and-keywords/reservation/reservation_view_form.robot
Resource                                       ./Pages-and-keywords/delete_client_from_list.robot
Resource                                       ./Pages-and-keywords/view_bil.robot         

Test Setup                                     Setup
Test Teardown                                  Teardown                     


*** Test Cases ***
    
Test_view_hotel_reservation
  perform_login_admin_user
  navigate_to_reservation_page_link_left
  navigate_to_view_reservation_form
  perform_logout
    
 Test_to_delete_client_form 
  perform_login_admin_user
  navigate_to_client_page_link_left
  navigate_to_delete_client_form 
  perform_logout
  
 Test_view_bill
    perform_login_admin_user
    navigate_to_bill_page_link_left
    view_bill
    perform_logout
    
 