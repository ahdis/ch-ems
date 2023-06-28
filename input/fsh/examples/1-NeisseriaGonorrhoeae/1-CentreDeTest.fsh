Instance: 1PR-CentreDeTestXa
InstanceOf: ChElmPractitionerRole
Usage: #example
Title: "1PR - Martine Giacometti @ Centre de test XA"
Description: "Example for a CH ELM PractitionerRole (Orderer)."
* practitioner = Reference(1Pract-CentreDeTestXa)
* organization = Reference(1Org-CentreDeTestXa)


Instance: 1Pract-CentreDeTestXa
InstanceOf: ChElmPractitioner
Usage: #example
Title: "1Pract - Martine Giacometti"
Description: "Example for a CH ELM Practitioner (Orderer)."
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000234438"
* name.family = "Giacometti"
* name.given = "Martine"



Instance: 1Org-CentreDeTestXa
InstanceOf: ChElmOrganization
Usage: #example
Title: "1Org - Centre de test XA"
Description: "Example for a CH ELM Organization (Orderer)."
* extension[department].valueString = "hematology"
* name = "Centre de test XA"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601888888884"
* telecom[email].value = "info@centredetestxa.ch"
* telecom[phone].value = "044444444444"
* address[0].line[0] = "Waldstr. 6"
* address[=].line[+] = "Postfach 18"
* address[=].postalCode = "8003"
* address[=].city = "Zürich"
* telecom[email].system = #email
* telecom[email].value = "info@centredetestxa.ch"
* telecom[phone].system = #phone
* telecom[phone].value = "0444444444"