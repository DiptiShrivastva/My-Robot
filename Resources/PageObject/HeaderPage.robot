*** Settings ***
Library   SeleniumLibrary


*** Variables ***
# For scalable variable
#${search_text}  robot

#For list variable
#@{search_text}   robot   mobile   iPod

#For dictionary variable
&{search_text}   a=robot   b=mobile   c=iPod
${SearchTextBox}    id=gh-ac 
${SearchButton}      //*[@id="gh-search-btn"]   





*** Keywords ***
Input text and click search
# For scalable varisblee
   #Input Text    ${SearchTextBox}    ${search_text}


#For list variable
  #Input Text    ${SearchTextBox}    ${search_text}[1]

#For dictionary variable 
  Input Text    id=gh-ac    ${search_text.b}

   Click Button   ${SearchButton}   
