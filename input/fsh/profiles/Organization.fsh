Profile: ChElmOrganization
Parent: $ch-core-organization
Id: ch-elm-organization
Title: "CH ELM Organization"
Description: "This CH ELM base profile constrains the Organization resource for the purpose of laboratory test reports."
* . ^short = "CH ELM Organization"
* extension contains ChElmExtDepartment named department 0..1
* identifier[GLN] 1..
* name 1..
* telecom[email] 1..
* telecom[phone] 1..
* address 1..
* address.postalCode 1..
* address.city 1..



Profile: ChElmOrganizationReportingLab
Parent: ChElmOrganization
Id: ch-elm-organization-reporting-lab
Title: "CH ELM Organization: Reporting Lab"
Description: "This CH ELM base profile constrains the Organization resource for the reporting laboratory for the purpose of laboratory test reports."
* . ^short = "CH ELM Organization: Reporting Lab"
* identifier contains FOPH 1..1
* identifier[FOPH] ^short = "Reporting laboratory identifying code, assigned by FOPH"
* identifier[FOPH] ^patternIdentifier.system = "http://fhir.ch/ig/ch-elm/NamingSystem/LabCodeFOPH"
* identifier[FOPH].value 1..
