
Profile: ChElmPractitionerRoleOrderer
Parent: ChLabPractitionerRole
Id: ch-elm-practitionerrole-orderer
Title: "CH ELM PractitionerRole: Orderer"
Description: "This CH ELM base profile constrains the PractitionerRole resource for the orderer."
* . ^short = "CH ELM PractitionerRole: Orderer"

* obeys ch-elm-practrole

* practitioner MS
* practitioner only Reference(ChElmPractitionerOrderer)
* organization MS
* organization only Reference(ChElmOrganizationOrderer)

