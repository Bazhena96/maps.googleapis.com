*** Settings ***
Library  RequestsLibrary
Library  Collections
Resource  Variables.robot
*** Keywords ***
Google Map
     Create Session  Map  ${URL}
     ${params}  Create Dictionary  location=-33.8670522,151.1957362  radius=500  types=food  name=harbour  key=${KEY}
     ${response}  Get request  Map  ${REG URI}  params=${params}
     Should Be Equal As Strings  ${response.status_code}  200
     Log To Console  ${response.status_code}
     Log To Console  ${response.content}


