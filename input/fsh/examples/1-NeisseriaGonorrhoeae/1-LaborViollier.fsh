Instance: 1PR-LaborViollier
InstanceOf: ChElmPractitionerRoleLab
Usage: #example
Title: "1PR - Martina Reporter @ Labor Viollier"
Description: "Example for a CH ELM PractitionerRole (Reporting Lab)."
* practitioner = Reference(1Pract-LaborViollier)
* organization = Reference(1Org-LaborViollier)


Instance: 1Pract-LaborViollier
InstanceOf: ChElmPractitioner
Usage: #example
Title: "1Pract - Martina Reporter"
Description: "Example for a CH ELM Practitioner (Reporting Lab)."
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000201041"
* name.family = "Reporter"
* name.given[0] = "Martina"
* name.given[+] = "Angela"



Instance: 1Org-LaborViollier
InstanceOf: ChElmOrganizationLab
Usage: #example
Title: "1Org - Labor Viollier"
Description: "Example for a CH ELM Organization (Reporting Lab)."
* extension[department].valueString = "Abt. 2"
* name = "Labor Viollier"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601002331470"
* identifier[FOPH].system = "http://fhir.ch/ig/ch-elm/NamingSystem/LabCodeFOPH"
* identifier[FOPH].value = "54322"
* address[0].line[0] = "Laborstrasse 4"
* address[=].line[+] = "Postfach 4"
* address[=].postalCode = "3006"
* address[=].city = "Bern"
* telecom[email].system = #email
* telecom[email].value = "info@laborviollier.ch"
* telecom[phone].system = #phone
* telecom[phone].value = "0311111111"
