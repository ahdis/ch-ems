Profile: ChElmServiceRequestLaboratoryOrder
Parent: ChLabServiceRequestLaboratoryOrder
Id: ch-elm-servicerequest-laboratory-order
Title: "CH ELM ServiceRequest: Laboratory Order"
Description: "This CH ELM base profile constrains the ServiceRequest resource for the purpose of laboratory orders."
* . ^short = "CH ELM ServiceRequest: Laboratory Order"

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains placerOrderIdentifier 0..1
* identifier[placerOrderIdentifier] ^short = "Placer Order Identifier"
* identifier[placerOrderIdentifier] ^patternIdentifier.type = $v2-0203#PLAC
* identifier[placerOrderIdentifier].system
* identifier[placerOrderIdentifier].value 1..


* subject only Reference(ChElmPatient)
* specimen only Reference(ChElmSpecimen)
