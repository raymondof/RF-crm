*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${ADD_CUSTOMER_HEADER_LABEL} =              Add Customer
${ADD_CUSTOMER_SUBMIT_BUTTON} =             Submit
${ADD_CUSTOMER_EMAIL_TEXTBOX} =             id=EmailAddress
${ADD_CUSTOMER_FIRST_NAME_TEXTBOX} =        id=FirstName
${ADD_CUSTOMER_LAST_NAME_TEXTBOX} =         id=LastName
${ADD_CUSTOMER_CITY_TEXTBOX} =              id=City
${ADD_CUSTOMER_STATE_DROPDOWN} =            id=StateOrRegion
${ADD_CUSTOMER_GENDER_RADIO} =              gender
${ADD_CUSTOMER_PROMO_CHECKBOX} =            name=promos-name

*** Keywords ***
Verify Page Loaded
    wait until page contains        ${ADD_CUSTOMER_HEADER_LABEL}


Add New Customer
    Fill Customer Fields
    Click "Submit" Button

Fill Customer Fields
    input text                      ${ADD_CUSTOMER_EMAIL_TEXTBOX}           janedoe@robotframeworktutorial.com
    input text                      ${ADD_CUSTOMER_FIRST_NAME_TEXTBOX}      Jane
    input text                      ${ADD_CUSTOMER_LAST_NAME_TEXTBOX}       Doe
    input text                      ${ADD_CUSTOMER_CITY_TEXTBOX}            Dallas
    select from list by value       ${ADD_CUSTOMER_STATE_DROPDOWN}          TX
    select radio button             ${ADD_CUSTOMER_GENDER_RADIO}            female
    select checkbox                 ${ADD_CUSTOMER_PROMO_CHECKBOX}

Click "Submit" Button
    click button                ${ADD_CUSTOMER_SUBMIT_BUTTON}