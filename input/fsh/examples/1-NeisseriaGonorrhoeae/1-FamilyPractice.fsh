Instance: 1PR-FamilyPractice
InstanceOf: ChElmPractitionerRole
Usage: #example
Title: "1PR - Martine Giacometti @ Family Practice"
Description: "Example for a CH ELM PractitionerRole (Orderer)."
* practitioner = Reference(1Pract-FamilyPractice)
* organization = Reference(1Org-FamilyPractice)


Instance: 1Pract-FamilyPractice
InstanceOf: ChElmPractitioner
Usage: #example
Title: "1Pract - Martine Giacometti"
Description: "Example for a CH ELM Practitioner (Orderer)."
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000234438"
* name.family = "Giacometti"
* name.given = "Martine"



Instance: 1Org-FamilyPractice
InstanceOf: ChElmOrganization
Usage: #example
Title: "1Org - Family Practice"
Description: "Example for a CH ELM Organization (Orderer)."
// * extension[department].valueString = "hematology"
* name = "Familienpraxis"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601888888884"
* address[0].line[0] = "Bernstr. 6"
* address[=].line[+] = "Postfach 18"
* address[=].postalCode = "3000"
* address[=].city = "Bern"
* telecom[email].system = #email
* telecom[email].value = "info@familienpraxis.ch"
* telecom[phone].system = #phone
* telecom[phone].value = "031 333 33 33"