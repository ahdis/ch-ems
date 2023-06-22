Profile: ChElmPractitionerRole
Parent: ChLabPractitionerRole
Id: ch-elm-practitionerrole
Title: "CH ELM PractitionerRole"
Description: "This CH ELM base profile constrains the Patient resource for the purpose of laboratory test reports."
* . ^short = "CH ELM PractitionerRole"


* practitioner only Reference(ChElmPractitioner)
* organization only Reference(ChElmOrganization)
