Instance: 1PR-KsAbc
InstanceOf: ChElmPractitionerRoleOrderer
Usage: #example
Title: "1PR - Monika Giacometti @ Kantonsspital ABC"
Description: "Example for a CH ELM PractitionerRole: Orderer"
* practitioner = Reference(1Pract-KsAbc)
* organization = Reference(1Org-KsAbc)


Instance: 1Pract-KsAbc
InstanceOf: ChElmPractitionerOrderer
Usage: #example
Title: "1Pract - Monika Giacometti"
Description: "Example for a CH ELM Practitioner: Orderer"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000234438"
* name.family = "Giacometti"
* name.given = "Monika"
* telecom[email].system = #email
* telecom[email].value = "m.giacometti@ks-abc.ch"
* telecom[phone].system = #phone
* telecom[phone].value = "+41 79 111 44 55"



Instance: 1Org-KsAbc
InstanceOf: ChElmOrganizationOrderer
Usage: #example
Title: "1Org - Kantonsspital ABC"
Description: "Example for a CH ELM Organization: Orderer"
* extension[department].valueString = "Abteilung 2"
* name = "Kantonsspital ABC"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601888888884"
* address.line = "Aortastrasse 22"
* address.line.extension[streetName].valueString = "Aortastrasse"
* address.line.extension[houseNumber].valueString = "22"
* address.line.extension[postOfficeBoxNumber].valueString = "18"
* address.postalCode = "3000"
* address.city = "Bern"
