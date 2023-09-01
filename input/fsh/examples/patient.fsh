Instance: Pat-ErnstKarlTanner
InstanceOf: ChElmPatient
Usage: #example
Title: "Pat - Ernst Karl Tanner"
Description: "Example for a CH ELM Patient - full name."
* gender = #male
* identifier[AHVN13].system = "urn:oid:2.16.756.5.32"
* identifier[AHVN13].value = "7561234567897"
* name.family = "Tanner"
* name.given[0] = "Ernst"
* name.given[+] = "Karl"
* birthDate = "1966-08-22"
* address[home].use = #home
* address[home].postalCode = "3000"
* address[home].city = "Bern"
* address[home].state = "BE"
* address[home].country = "CH"
* address[home].country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address[home].country.extension.valueCoding = urn:iso:std:iso:3166#CH


Instance: Pat-ET
InstanceOf: ChElmPatient
Usage: #example
Title: "Pat - ET"
Description: "Example for a CH ELM Patient - initials."
* gender = #male
* identifier[AHVN13].system = "urn:oid:2.16.756.5.32"
* identifier[AHVN13].value = "7561234567897"
* name.family = "T"
* name.given = "E"
* birthDate = "1966-08-22"
* address[home].use = #home
* address[home].postalCode = "3000"
* address[home].city = "Bern"
* address[home].state = "BE"
* address[home].country = "CH"
* address[home].country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address[home].country.extension.valueCoding = urn:iso:std:iso:3166#CH


Instance: Pat-E5
InstanceOf: ChElmPatient
Usage: #example
Title: "Pat - E5"
Description: "Example for a CH ELM Patient - special case HIV/AIDS"
* gender = #male
* identifier[AHVN13].system = "urn:oid:2.16.756.5.32"
* identifier[AHVN13].value = "7561234567897"
* name.text = "E5"
* name.given.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.given.extension.valueCode = #masked
* name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* name.family.extension.valueCode = #masked
* birthDate = "1966-08-22"
* address[home].use = #home
* address[home].postalCode = "3000"
* address[home].city = "Bern"
* address[home].state = "BE"
* address[home].country = "CH"
* address[home].country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address[home].country.extension.valueCoding = urn:iso:std:iso:3166#CH
