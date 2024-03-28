
Profile: ChElmPractitionerRoleOrderer
Parent: ChLabPractitionerRole
Id: ch-elm-practitionerrole-orderer
Title: "CH ELM PractitionerRole: Orderer"
Description:    """
This profile constrains the PractitionerRole resource for the orderer: 
- orderer organization and/or practitioner must be present
- a postalCode and city must be present from organization and/or practitioner
"""
* . ^short = "CH ELM PractitionerRole: Orderer"

* obeys ch-elm-practrole and ch-elm-practrole-organizaton-name-exists

* practitioner MS
* practitioner only Reference(ChElmPractitionerOrderer)
* organization MS
* organization only Reference(ChElmOrganizationOrderer)