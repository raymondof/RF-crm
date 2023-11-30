*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${SIGN_IN_HEADER_LABEL} =       Login
${SIGN_IN_EMAIL_TEXTBOX} =      id=email-id
${SIGN_IN_PASSWORD_TEXTBOX} =   id=password
${SIGN_IN_SUBMIT_BUTTON} =      id=submit-id

*** Keywords ***
Verify Page Loaded
    wait until page contains    ${SIGN_IN_HEADER_LABEL}

Login With Valid Credentials
    [Arguments]    ${Email}     ${Password}
    Fill "Email" Field          ${Email}
    Fill "Password" Field       ${Password}
    Click "Submit" Button

Fill "Email" Field
    [Arguments]    ${Email}
    input text                  ${SIGN_IN_EMAIL_TEXTBOX}    ${Email}

Fill "Password" Field
    [Arguments]    ${Password}
    input text                  ${SIGN_IN_PASSWORD_TEXTBOX}     ${Password}

Click "Submit" Button
    click button                ${SIGN_IN_SUBMIT_BUTTON}