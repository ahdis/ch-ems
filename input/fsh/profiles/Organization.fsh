Profile: ChElmOrganizationReportingLab
Parent: $ch-core-organization
Id: ch-elm-organization-reporting-lab
Title: "CH ELM Organization: Reporting Lab"
Description: "This CH ELM base profile constrains the Organization resource for the reporting laboratory for the purpose of laboratory test reports."
* . ^short = "CH ELM Organization: Reporting Lab"
* identifier[GLN] 1..
* identifier contains foph 1..1
* identifier[foph] ^short = "Reporting unit identifying code"
* identifier[foph] ^patternIdentifier.system = "http://fhir.ch-elm.ch/reporting-laboratory"
* identifier[foph].value 1..
* telecom[email] 1..
* telecom[phone] 1..
* address 1..



Profile: ChElmOrganizationOrderer
Parent: $ch-core-organization
Id: ch-elm-organization-orderer
Title: "CH ELM Organization: Orderer"
Description: "This CH ELM base profile constrains the Organization resource for the ordering organization for the purpose of laboratory orders."
* . ^short = "CH ELM Organization: Orderer"
* name
* address 1..



Profile: ChElmOrganizationDepartment
Parent: $ch-core-organization
Id: ch-elm-organization-department
Title: "CH ELM Organization: Department"
Description: "This CH ELM base profile constrains the Organization resource to represent departments/divisions of an organization."
* . ^short = "CH ELM Organization: Department"
* partOf 1..
* partOf only Reference(ChElmOrganizationReportingLab or ChElmOrganizationOrderer)