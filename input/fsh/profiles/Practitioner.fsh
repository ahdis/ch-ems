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
* telecom[phone] 1..

