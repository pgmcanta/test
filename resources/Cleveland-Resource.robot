*** Settings ***
Library             Dialogs
Library             QWeb
Library             String

*** Variables ***
${BROWSER}                  chrome

*** Keywords ***
Setup Browser
    Open Browser    about:blank    ${BROWSER}
 #   Set Window Size   1200    900

End suite
    Close All Browsers
    Sleep    2

Appstate
    [Documentation]     AppState handler
    [Arguments]         ${state}
    ${state}=           Convert To Lowercase    ${state}
    
    Run Keyword If     '${state}' == 'innovation'
    ...                 Innovation
    
Innovation
    Go To           https://innovations.clevelandclinic.org/About/Overview.aspx


