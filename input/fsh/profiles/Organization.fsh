Profile: ChElmOrganizationReportingLab
Parent: $ch-core-organization
Id: ch-elm-organization-reporting-lab
Title: "CH ELM Organization: Reporting Lab"
Description: "This CH ELM base profile constrains the Organization resource for the reporting laboratory for the purpose of laboratory test reports."
* . ^short = "CH ELM Organization: Reporting Lab"
* extension contains ChElmExtDepartment named department 0..1
* identifier[GLN] 1..
* identifier contains foph 1..1
* identifier[FOPH] ^short = "Reporting laboratory identifying code, assigned by FOPH"
* identifier[FOPH] ^patternIdentifier.system = "http://fhir.ch/ig/ch-elm/NamingSystem/LabCodeFOPH"
* identifier[FOPH].value 1..
* telecom[email] 1..
* telecom[phone] 1..
* address 1..



Profile: ChElmOrganizationOrderer
Parent: $ch-core-organization
Id: ch-elm-organization-orderer
Title: "CH ELM Organization: Orderer"
Description: "This CH ELM base profile constrains the Organization resource for the ordering organization for the purpose of laboratory orders."
* . ^short = "CH ELM Organization: Orderer"
* extension contains ChElmExtDepartment named department 0..1

