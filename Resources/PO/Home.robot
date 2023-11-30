*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${HOME_HEADER_LABEL} =              Customers Are Priority One

*** Keywords ***
Navigate To
    go to                           ${URL}
    verify page loaded

Verify Page Loaded
    wait until page contains        ${HOME_HEADER_LABEL}