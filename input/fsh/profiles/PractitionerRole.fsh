Profile: ChElmPractitionerRoleReportingLab
Parent: ChLabPractitionerRole
Id: ch-elm-practitionerrole-reporting-lab
Title: "CH ELM PractitionerRole: Reporting Lab"
Description: "This CH ELM base profile constrains the PractitionerRole resource for the reporting laboratory for the purpose of laboratory test reports."
* . ^short = "CH ELM PractitionerRole: Reporting Lab"
* practitioner 1..
* practitioner only Reference(ChElmPractitionerReportingLab)
* organization 1..
* organization only Reference(ChElmOrganizationReportingLab)



Profile: ChElmPractitionerRoleOrderer
Parent: ChLabPractitionerRole
Id: ch-elm-practitionerrole-orderer
Title: "CH ELM PractitionerRole: Orderer"
Description: "This CH ELM base profile constrains the PractitionerRole resource for the ordering organization for the purpose of laboratory test orders."
* . ^short = "CH ELM PractitionerRole: Orderer"
* practitioner 1..
* practitioner only Reference(ChElmPractitionerOrderer)
* organization 1..
* organization only Reference(ChElmOrganizationOrderer)