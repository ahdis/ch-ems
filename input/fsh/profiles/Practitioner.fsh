Profile: ChElmPractitionerOrderer
Parent: ChLabPractitioner
Id: ch-elm-practitioner-orderer
Title: "CH ELM Practitioner: Orderer"
Description: "This CH ELM base profile constrains the Practitioner resource for the orderer."
* . ^short = "CH ELM Practitioner: Orderer"
* identifier[GLN] MS
* name.given MS
* name.family MS
* telecom[email] MS
* telecom[email].value ^example.label = "CH ELM"
* telecom[email].value ^example.valueString = "info@domain.ch"
* telecom[phone] MS
* telecom[phone].value ^example.label = "CH ELM"
* telecom[phone].value ^example.valueString = "+41 79 999 55 66"

