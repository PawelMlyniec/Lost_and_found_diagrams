```plantuml
skinparam component {
  FontSize 13
  FontName Courier
  BorderColor black
  BackgroundColor 93FFF3
  ArrowFontName Impact
  ArrowColor black
  ArrowFontColor black
}

skinparam note {

}

component "Frontend" as frontend
component "API Gateway" as gateway #DDA6FF
interface REST
interface "Kafka" as kafka
component "Lost Report Service" as LRS
component "auth0" as auth0 #DDA6FF
component "Text Message Service" as TMS
component "Notification Service" as NS
database DB_LRS
database DB_TMS
database DB_NS

frontend --> REST
REST --> gateway
REST --> auth0
gateway --> LRS
gateway --> TMS
LRS --> kafka: <items matched>
TMS --> kafka: <text message sent>
kafka --> NS
LRS - DB_LRS
TMS - DB_TMS
NS - DB_NS

note top of gateway
    - single entrypoint to whole backend
    - forward REST requests to microservices
end note

note bottom of LRS
    - CRUD for lost/found reports
    - matching lost with found reports
end note

note bottom of TMS
    - send text message
    - get text messages
    - mark message as read
end note

note left of NS
    - send notification emails
end note

note top of auth0
    - external service
    - user management
    - authorization
end note
```
