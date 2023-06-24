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



/* Composition.subject
Instance: dc2b606f-3cf7-4711-a2ff-52da04b89e04
InstanceOf: Patient
Usage: #inline
* extension.url = "http://hl7.org/fhir/StructureDefinition/patient-birthPlace"
* extension.valueAddress.line = "Via voltri 3"
* extension.valueAddress.line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract"
* extension.valueAddress.line.extension.valueString = "058091"
* extension.valueAddress.city = "Roma"
* extension.valueAddress.district = "RM"
* extension.valueAddress.state = "120"
* extension.valueAddress.country = "100"
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2"
* identifier.value = "TKLEYP93Y27Z315J"
* identifier.assigner.display = "MEF"
* name.family = "Verdi"
* name.given = "Giuseppe"
* telecom[0].system = #email
* telecom[=].value = "giuseppe.verdi@gmail.com"
* telecom[=].use = #home
* telecom[+].system = #phone
* telecom[=].value = "33224456"
* telecom[=].use = #mobile
* gender = #male
* birthDate = "1993-06-19"
* address[0].use = #home
* address[=].line = "Via Aurora 12"
* address[=].line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract"
* address[=].line.extension.valueString = "058091"
* address[=].city = "Roma"
* address[=].district = "RM"
* address[=].state = "120"
* address[=].postalCode = "00187"
* address[=].country = "100"
* address[+].use = #home
* address[=].line = "Via Canevari 12B"
* address[=].line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract"
* address[=].line.extension.valueString = "058091"
* address[=].city = "Roma"
* address[=].district = "RM"
* address[=].state = "120"
* address[=].postalCode = "00138"
* address[=].country = "100"
*/