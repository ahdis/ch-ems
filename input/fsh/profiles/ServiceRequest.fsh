Profile: ChElmServiceRequestLaboratoryOrder
Parent: ChLabServiceRequestLaboratoryOrder
Id: ch-elm-servicerequest-laboratory-order
Title: "CH ELM ServiceRequest: Laboratory Order"
Description: "This CH ELM base profile constrains the ServiceRequest resource for the purpose of laboratory orders."
* . ^short = "CH ELM ServiceRequest: Laboratory Order"

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains placerOrderIdentifier 1..1
* identifier[placerOrderIdentifier] ^short = "Placer Order Identifier"
* identifier[placerOrderIdentifier] ^patternIdentifier.type = $v2-0203#PLAC
* identifier[placerOrderIdentifier].system 1..
* identifier[placerOrderIdentifier].value 1..

* code 1..
* code only ChElmCodeableConcept

* basedOn only Reference(ChElmServiceRequestLaboratoryOrder)

* subject only Reference(ChElmPatient)

* specimen only Reference(ChElmSpecimen)

* requester 1..
* requester only Reference(ChElmPractitionerRole)
