*** Settings ***
Resource                                       ../Credentials/Environment_variables.robot
Resource                                       page-login.robot
*** Keywords ***
Setup
    Set Environment Variable                   ${chrome_webdriver_name}           ${chrome_webdriver_location}    
    Open Browser                               ${base_url}                        ${chrome_browser} 
    Maximize Browser Window  
    Set Selenium Speed                         .2
    Set Selenium Timeout                       1 min 30 secs
    Delete All Cookies
    Wait Until Page Contains                   ${login_pg_login_label}    
    Location Should be                         ${base_url}   
    Title Should be                            ${login_pg_title}                         
   
Teardown    
    Close All Browsers 