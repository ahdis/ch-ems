Profile: ChElmPractitionerReportingLab
Parent: ChLabPractitioner
Id: ch-elm-practitioner-reporting-lab
Title: "CH ELM Practitioner: Reporting Lab"
Description: "This CH ELM base profile constrains the Practitioner resource for the reproting laboratory for the purpose of laboratory test reports."
* . ^short = "CH ELM Practitioner: Reporting Lab"
* identifier[GLN] 1..
* name 1..
* name.given 1..
* name.family 1..
* telecom[email] 1..
* telecom[phone] 1..



Profile: ChElmPractitionerOrderer
Parent: ChLabPractitioner
Id: ch-elm-practitioner-orderer
Title: "CH ELM Practitioner: Orderer"
Description: "This CH ELM base profile constrains the Practitioner resource for the ordering organization for the purpose of laboratory orders."
* . ^short = "CH ELM Practitioner: Orderer"
* name 1..
* name.given 1..
* name.family 1..
