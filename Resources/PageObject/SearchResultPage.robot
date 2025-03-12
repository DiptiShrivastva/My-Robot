*** Settings ***
Library  SeleniumLibrary
Resource    ./HeaderPage.robot
*** Variables ***
${search_results}  results for
${search_text}  robot

*** Keywords ***
Verify search results

#For scalable variable
  #Page Should Contain    ${search_results}  ${search_text}


# For list variable by use of index
  #Page Should Contain    ${search_results}  ${search_text}[1]


 #For dictionary variable 
  Page Should Contain    ${search_results}   ${search_text.b}  
