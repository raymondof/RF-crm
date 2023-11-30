*** Settings ***
Resource        ./PO/AddCustomer.robot
Resource        ./PO/Customers.robot
Resource        ./PO/Home.robot
Resource        ./PO/LoggedOut.robot
Resource        ./PO/SignIn.robot
Resource        ./PO/TopNav.robot

*** Variables ***

*** Keywords ***
Go to "Home" Page
    Home.Navigate To
    Home.Verify Page Loaded

Login With Valid Credentials
    [Arguments]    ${Email}     ${Password}
    TopNav.Click "Sign In" Link
    SignIn.Verify Page Loaded
    SignIn.Login With Valid Credentials     ${Email}     ${Password}
    Customers.Verify Page Loaded

Add New Customer
    Customers.Click Add Customer Link
    AddCustomer.Verify Page Loaded
    AddCustomer.Add New Customer
    Customers.Verify Customer Added Succesfully

Sign Out
    TopNav.Click "Sign Out" Link
    LoggedOut.Verify Page Loaded