*** Settings ***
Library  RequestsLibrary
Library  Collections
Resource  Variables.robot
*** Keywords ***
Google Map
     Create Session  map  ${URL}
     ${params}  Create Dictionary  location=-33.8670522,151.1957362  radius=500  types=food  name=harbour  key=${KEY}
     ${response}  Get request  map  ${REG URI}  params=${params}
     Log To Console  ${response.status_code}
     Log To Console  ${response.content}


