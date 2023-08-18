
Profile: ChElmPractitionerRole
Parent: ChLabPractitionerRole
Id: ch-elm-practitionerrole
Title: "CH ELM PractitionerRole"
Description: "This CH ELM base profile constrains the PractitionerRole resource for the purpose of laboratory test orders."
* . ^short = "CH ELM PractitionerRole"
* practitioner 1..
* practitioner only Reference(ChElmPractitioner)
* organization 1..
* organization only Reference(ChElmOrganization)


Profile: ChElmPractitionerRoleLab
Parent: ChElmPractitionerRole
Id: ch-elm-practitionerrole-lab
Title: "CH ELM PractitionerRole: Lab"
Description: "This CH ELM base profile constrains the PractitionerRole for a reporting laboratory resource for the purpose of laboratory test orders."
* . ^short = "CH ELM PractitionerRole: Lab"

* organization only Reference(ChElmOrganizationLab)
