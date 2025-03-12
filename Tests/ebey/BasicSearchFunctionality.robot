*** Settings ***
Documentation  Basic search Functionality   
Resource   ../../Resources/CommonFunctinality.robot
Resource   ../../Resources/ebayKeywords.robot
Resource   ../../Resources/PageObject/HeaderPage.robot
Resource   ../../Resources/PageObject/LandingPage.robot
Resource   ../../Resources/PageObject/SearchResultPage.robot
Test Setup  CommonFunctinality.Start testCase
Test Teardown   CommonFunctinality.Finish testCase
*** Test Cases ***
Verification of search Functionality
  [Documentation]   verifies basic search
  
  #ebayKeywords.Verify testCase

  HeaderPage.Input text and click search
  SearchResultPage.Verify search results
Verify advance search Functionality
   LandingPage.Click on advance search
 
  

*** Variables ***


*** Keywords ***

  
    