Instance: 1Pat-DM
InstanceOf: ChElmPatient
Usage: #example
Title: "1Pat - D.M."
Description: "Example for a CH ELM Patient (only with initials)."
* name.family = "M"
* name.given = "D"
* birthDate = "1960-08-22"
* address[0].postalCode = "3000"
* address[=].city = "Bern"
* address[=].state = "BE"
* address[=].country = "CH"
* address[=].country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address[=].country.extension.valueCoding = urn:iso:std:iso:3166#CH
