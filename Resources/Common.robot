*** Settings ***
Library         SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    log                             Begin web test and set up variables
    # Initialize Selenium. Speed refers to how long RF is waiting between steps
    #set selenium speed              .2s
    set selenium timeout            10s

    log                             Starting the test case!
    open browser                    about:blank          ${BROWSER}

End Web Test
    close all browsers  # instead of close browser, use this to clear cache