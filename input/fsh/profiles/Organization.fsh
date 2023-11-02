Profile: ChElmOrganizationAuthor
Parent: $ch-core-organization
Id: ch-elm-organization-author
Title: "CH ELM Organization: Author"
Description: "This CH ELM base profile constrains the Organization resource for the author of the laboratory report."
* . ^short = "CH ELM Organization: Author"
* identifier[GLN] 1..


Profile: ChElmOrganizationLab
Parent: $ch-core-organization
Id: ch-elm-organization-lab
Title: "CH ELM Organization: Lab"
Description: "This CH ELM base profile constrains the Organization resource for the reporting laboratory."
* . ^short = "CH ELM Organization: Lab"
* identifier[GLN] 1..
* name 1..


Profile: ChElmOrganizationOrderer
Parent: $ch-core-organization
Id: ch-elm-organization-orderer
Title: "CH ELM Organization: Orderer"
Description: "This CH ELM base profile constrains the Organization resource for the orderer."
* . ^short = "CH ELM Organization: Orderer"
* extension contains ChElmExtDepartment named department 0..1 MS
* identifier[GLN] MS
* name MS
* address.line ..1 MS
* address.line.extension[streetName] MS
* address.line.extension[houseNumber] MS
* address.line.extension[postOfficeBoxNumber] MS
* address.postalCode MS
* address.city MS
