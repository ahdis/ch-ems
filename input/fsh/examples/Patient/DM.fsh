Instance: DM
InstanceOf: ChElmPatient
Usage: #example
Title: "D.M."
Description: "Example of a Patient (only with initials) for a laboratory result."
* name.family = "M"
* name.given = "D"
* birthDate = "1960-08-22"
* address[0].postalCode = "3000"
* address[=].city = "Bern"
* address[=].state = "BE"
* address[=].country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address[=].country.extension.valueCoding = urn:iso:std:iso:3166#CH
