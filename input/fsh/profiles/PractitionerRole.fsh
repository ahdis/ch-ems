
Profile: ChElmPractitionerRoleOrderer
Parent: ChLabPractitionerRole
Id: ch-elm-practitionerrole-orderer
Title: "CH ELM PractitionerRole: Orderer"
Description: "This CH ELM base profile constrains the PractitionerRole resource for the orderer."
* . ^short = "CH ELM PractitionerRole: Orderer"
* practitioner 1..
* practitioner only Reference(ChElmPractitionerOrderer)
* organization 1..
* organization only Reference(ChElmOrganizationOrderer)

