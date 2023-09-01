Profile: ChElmPractitionerOrderer
Parent: ChLabPractitioner
Id: ch-elm-practitioner-orderer
Title: "CH ELM Practitioner: Orderer"
Description: "This CH ELM base profile constrains the Practitioner resource for the orderer."
* . ^short = "CH ELM Practitioner: Orderer"
* identifier[GLN] 1..
* name 1..
* name.given 1..
* name.family 1..
* telecom[email] 1..
* telecom[email].value ^example.label = "CH ELM"
* telecom[email].value ^example.valueString = "info@domain.ch"
* telecom[phone] 1..
* telecom[phone].value ^example.label = "CH ELM"
* telecom[phone].value ^example.valueString = "+41 79 999 55 66"

