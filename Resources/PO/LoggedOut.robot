*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${LOGGED_OUT_HEADER_LABEL} =            Signed Out

*** Keywords ***
Verify Page Loaded
    wait until page contains            ${LOGGED_OUT_HEADER_LABEL}