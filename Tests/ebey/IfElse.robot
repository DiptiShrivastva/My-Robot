*** Settings ***
Library  SeleniumLibrary      timeout=10s

Task Setup  Open Browser  https://www.saucedemo.com/    chrome
             
Test Teardown  Close Browser

*** Test Cases ***

TC to demonstrate if else conditions
 
# https://www.saucedemo.com/   chrome
   [Documentation]   TC to demonstrate Alert
  
   Input Text    id:user-name    standard_user
   Input Text    id:password    secret_sauce
   Click Button    id:login-button
    sleep   2s
   #
   ${list-items} =  SeleniumLibrary.Get Element Count     xpath://div[@class="inventory_item"]
  
   #xpath://div[@data-test="inventory-item"](created xpath)  which is giving exact result = 6 items
   #xpath://div[@class="inventory_item"]  (created xpath)  which is giving exact result = 6 items
   #xpath://*[@id="inventory_container"]/div    Copied or inbuit xpath which is giving false result = 2

   Run Keyword If    ${list-items} == 10    Run first test
   ...  ELSE IF    ${list-items}<10 and ${list-items}>5   Run second test    
   ...  ELSE   Run third test

#For loop
TC to demonstrate for loop


   @{listelements} =  Get WebElements    xpath://div[@class="inventory_item"]
   FOR    ${element}    IN    @{listelements}
       Log    ${element}
      
   END


TC to demonstrate for xpath
   Go To    https://www.sugarcrm.com/au/request-demo/
   Wait Until Element Contains    id:CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll    Accept All Cookies
 
   Click Button    id:CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll


    Page Should Contain List      xpath://*[@id="input_1_75"] 
 # list should be unique xpath in finder should be one


   ${Numbers_of_element} =   SeleniumLibrary.Get Element Count   xpath=//select[@id="input_1_75"]/option 
 # xpath should cotains element of lists    
   @{list_items}=    Get List Items    xpath://*[@id="input_1_75"]


   Select From List By Value    xpath=//select[@name="input_75"]    Chemicals
   Sleep  2s
 
  #Click Element    xpath://*[@id="input_1_75"]/option[5]
   
*** Keywords ***
Run first test
  Log To Console    High numbers of element
Run second test
  Log To Console    Good numbers of items
Run third test
  Log To Console    less numbers of items
