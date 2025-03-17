*** Settings ***
Library  SeleniumLibrary      timeout=10s
#Task Setup  Open Browser  https://www.sugarcrm.com/au/request-demo/   chrome

             
Test Teardown  Close Browser
*** Test Cases ***
TC to demonstrate mouse actions
# https://www.sugarcrm.com/au/request-demo/   chrome
   [Documentation]   TC to demonstrate Alert
 
   Open Browser  https://www.sugarcrm.com/au/request-demo/   chrome
   Wait Until Element Contains    id:CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll    Accept All Cookies
   Click Button    id:CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll
  
   Scroll Element Into View    id:input_1_6
   Mouse Down    id:input_1_6       
   #put cursor
   Mouse Out    id:input_1_6         
   # mouse up and out are similiar take out cursor from elemet but up is more preferable

   Scroll Element Into View    //*[@id="main"]/div/div/div[4]/div/div/div/div[2]/p[2]/a
   Mouse Over    //*[@id="main"]/div/div/div[4]/div/div/div/div[2]/p[2]/a           
   #hover links or items
  
   Mouse Up    //*[@id="main"]/div/div/div[4]/div/div/div/div[2]/p[2]/a
   Mouse Down On Link    //*[@id="main"]/div/div/div[4]/div/div/div/div[2]/p[2]/a
TC to demonstrate lists
   Open Browser  https://www.sugarcrm.com/au/request-demo/   chrome
   Wait Until Element Contains    id:CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll    Accept All Cookies
 
  Click Button    id:CybotCookiebotDialogBodyLevelButtonLevelOptinAllowAll
   Page Should Contain List     id:input_1_8
   List Selection Should Be    id:input_1_8       Company Size*
   @{Items} =  Get List Items    id:input_1_8
   ${value} =   Get Selected List Value    id:input_1_8
   ${lable} =  Get Selected List Label    id:input_1_8
   Select From List By Index    id:input_1_8   1
   ${lable1} =  Get Selected List Label    id:input_1_8
    Select From List By Label    id:input_1_8   11-50 employees
   ${lable2} =  Get Selected List Label    id:input_1_8
   Select From List By Value    id:input_1_8      level4
   ${lable3} =  Get Selected List Label    id:input_1_8
   Sleep    2s


TC to demonstrate Alert
#https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert   chrome
    [Documentation]   TC to demonstrate Alert
    Open Browser   https://www.w3schools.com/js/tryit.asp?filename=tryjs_alert   chrome
 
   Wait Until Element Is Visible     id:accept-choices     
   Click Element    id:accept-choices
   Select Frame    id:iframeResult
   Click Button    xpath:/html/body/button
   ${text} =  Handle Alert   accept    
   #Input Text Into Alert    This is my alert 
   Click Button    xpath:/html/body/button
   Alert Should Be Present   I am an alert box!    action=accept
   
   Alert Should Not Be Present
  # Input Text Into Alert    This is my alert!   
Test select multiple items at one time
  Open Browser    https://www.w3schools.com/TAgs/tryit.asp?filename=tryhtml_select_multiple   chrome
   Select Frame    id:iframeResult
   Page Should Contain List   id:cars
   Select All From List    id:cars
  @{AllLabels} =  Get Selected List Labels    id:cars
  Unselect From List By Index    id:cars   0
  Unselect From List By Label    id:cars   Saab
  Unselect From List By Value    id:cars   opel
  Unselect All From List    id:cars


  


