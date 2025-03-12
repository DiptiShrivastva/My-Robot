*** Settings ***
Library  SeleniumLibrary  timeout=5s
*** Variables ***
${url}   https://www.ebay.com/
${Browser}   chrome

*** Keywords ***
Start testCase
  Open Browser  ${url}   ${Browser}
Finish testCase
  Close Browser