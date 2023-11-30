*** Settings ***
Documentation   This is some basic info about the whole suite and will appear on the top of result dir.
Resource        ../Resources/Common.robot
Resource        ../Resources/CrmApp.robot
Test Setup      Begin Web Test      # runs first before each test
Test Teardown   End Web Test        # runs after each test


# Run the script:
# robot -d Results ./Tests/Crm.robot

# problem running firefor
# firefox     executable_path=/usr/bin/firefox
# WebDriverException: Message: Can not connect to the Service /usr/bin/firefox
*** Variables ***
${BROWSER} =                    chrome
${URL} =                        https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =          admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =       1234

*** Test Cases ***
Home Page Should Load
    [Documentation]                 Test the home page
    [Tags]                          1002    Smoke   Home
    CrmApp.Go to "Home" Page

Should be able to Login With Valid Credentials
    [Documentation]                 Test the login
    [Tags]                          1002    Smoke   Login
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}

Should be able to Log Out
    [Documentation]                 Test the log out
    [Tags]                          1002    Smoke   Login
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out

Should be able to add new customer
    [Documentation]                 Test adding a new customer
    [Tags]                          1006    Smoke   Contacts
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out


*** Keywords ***
