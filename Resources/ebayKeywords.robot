*** Settings ***
Library  SeleniumLibrary   timeout=5s
*** Keywords ***
Verify testCase
   Input Text    id=gh-ac    mobile
   Click Button  //*[@id="gh-search-btn"]   
   Page Should Contain   results for mobile