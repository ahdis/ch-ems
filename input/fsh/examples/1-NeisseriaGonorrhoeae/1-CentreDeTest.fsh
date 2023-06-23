Instance: 1PR-CentreDeTestXa
InstanceOf: ChElmPractitionerRoleOrderer
Usage: #example
Title: "1PR - Martine Giacometti @ Centre de test XA"
Description: "Example for a CH ELM PractitionerRole: Orderer."
* practitioner = Reference(1Pract-CentreDeTestXa)
* organization = Reference(1Org-CentreDeTestXa)


Instance: 1Pract-CentreDeTestXa
InstanceOf: ChElmPractitionerOrderer
Usage: #example
Title: "1Pract - Martine Giacometti"
Description: "Example for a CH ELM Practitioner: Orderer."
* name.family = "Giacometti"
* name.given = "Martine"



Instance: 1Org-CentreDeTestXa
InstanceOf: $ch-core-organization
Usage: #example
Title: "1Org - Centre de test XA"
Description: "Example for a CH ELM Organization: Orderer."
* name = "Centre de test XA"
* address[0].line[0] = "Waldstr. 6"
* address[=].line[+] = "Postfach 18"
* address[=].postalCode = "8003"
* address[=].city = "Zürich"




Instance: 1Org-CentreDeTestXa-Abt2
InstanceOf: ChElmOrganizationDepartment
Usage: #example
Title: "1Org - Centre de test XA - hematology"
Description: "Example for a CH ELM Organization: Department."
* name = "hematology"
* partOf = Reference(1Org-CentreDeTestXa)
