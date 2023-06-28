
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


Profile: ChElmPractitionerRoleReportingLab
Parent: ChElmPractitionerRole
Id: ch-elm-practitionerrole-reporting-lab
Title: "CH ELM PractitionerRole: Reporting Lab"
Description: "This CH ELM base profile constrains the PractitionerRole for a reporting laboratory resource for the purpose of laboratory test orders."
* . ^short = "CH ELM PractitionerRole: Reporting Lab"

* organization only Reference(ChElmOrganizationReportingLab)
