Instance: 2PR-SuperLabor
InstanceOf: ChElmPractitionerRole
Usage: #example
Title: "2PR - Markus Super @ SuperLabor"
Description: "Example for a CH ELM PractitionerRole (Primary Lab)."
* practitioner = Reference(2Pract-SuperLabor)
* organization = Reference(2Org-SuperLabor)


Instance: 2Pract-SuperLabor
InstanceOf: ChElmPractitioner
Usage: #example
Title: "2Pract - Markus Super"
Description: "Example for a CH ELM Practitioner (Primary Lab)."
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000000309"
* name.family = "Super"
* name.given = "Markus"


Instance: 2Org-SuperLabor
InstanceOf: ChElmOrganization
Usage: #example
Title: "2Org - SuperLabor"
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

