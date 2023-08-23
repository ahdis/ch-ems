Profile: ChElmServiceRequestLaboratoryOrder
Parent: ChLabServiceRequestLaboratoryOrder
Id: ch-elm-servicerequest-laboratory-order
Title: "CH ELM ServiceRequest: Laboratory Order"
Description: "This CH ELM base profile constrains the ServiceRequest resource for the purpose of laboratory orders."
* . ^short = "CH ELM ServiceRequest: Laboratory Order"
* identifier 1..
* status = #completed
* intent = #order
* code 1..
* code only ChElmCodeableConcept
* code from ChElmResultsLaboratoryObservation (required)
* subject only Reference(ChElmPatient)
* specimen 1..
* specimen only Reference(ChElmSpecimen)
* requester 1..
* requester only Reference(ChElmPractitionerRole)
