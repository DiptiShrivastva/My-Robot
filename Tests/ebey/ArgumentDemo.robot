*** Settings ***
*** Test Cases ***
Argument demo keyword testCase1
   Argument demo keyword   Dipti  Shrivstava
Argument demo keyword testCase2
  Argument demo keyword    Shilpa   Dhabu
*** Keywords ***
Argument demo keyword
   [Arguments]  ${arg1}  ${arg2}
   Log    ${arg1}
   Log    ${arg2}