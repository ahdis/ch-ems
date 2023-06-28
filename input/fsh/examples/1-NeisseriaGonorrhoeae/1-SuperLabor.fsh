Instance: 1PR-SuperLabor
InstanceOf: ChElmPractitionerRole
Usage: #example
Title: "1PR - Markus Super @ SuperLabor"
Description: "Example for a CH ELM PractitionerRole (Primary Lab)."
* practitioner = Reference(1Pract-SuperLabor)
* organization = Reference(1Org-SuperLabor)


Instance: 1Pract-SuperLabor
InstanceOf: ChElmPractitioner
Usage: #example
Title: "1Pract - Markus Super"
Description: "Example for a CH ELM Practitioner (Primary Lab)."
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000000309"
* name.family = "Super"
* name.given = "Markus"


Instance: 1Org-SuperLabor
InstanceOf: ChElmOrganization
Usage: #example
Title: "1Org - SuperLabor"
Description: "Example for a CH ELM Organization (Primary Lab)."
* extension[department].valueString = "hematology" // TODO
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000000316"
* name = "SuperLabor"
* address[0].line = "Bahnhofstr. 4"
* address[=].postalCode = "8001"
* address[=].city = "Zürich"
* telecom[email].system = #email
* telecom[email].value = "info@superlabor.ch"
* telecom[phone].system = #phone
* telecom[phone].value = "044 444 33 22"

