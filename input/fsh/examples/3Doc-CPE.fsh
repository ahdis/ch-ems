Instance: 3Doc-CPE
InstanceOf: ChElmDocument
Usage: #example
Title: "3Doc - Carbapenemase-producing Enterobacteriaceae (CPE)"
Description: "Example for a CH ELM Document: Laboratory Report (organism in addition to the leading LOINC code)"
* meta.profile[0] = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1301332d-6012-443f-9690-72913db2e3cc"
* type = #document
* timestamp = "2023-08-05T11:30:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/3Comp-CPE"
* entry[=].resource = 3Comp-CPE
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/3DR-CPE"
* entry[=].resource = 3DR-CPE
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/3Pat-HF"
* entry[=].resource = 3Pat-HF
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/3Obs-CPE"
* entry[=].resource = 3Obs-CPE
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/3Spec-Specimen"
* entry[=].resource = 3Spec-Specimen
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/3SR-Order"
* entry[=].resource = 3SR-Order
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/3Org-Labor"
* entry[=].resource = 3Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/3PR-KsAbc"
* entry[=].resource = 3PR-KsAbc
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/3Pract-KsAbc"
* entry[=].resource = 3Pract-KsAbc
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/3Org-KsAbc"
* entry[=].resource = 3Org-KsAbc

Instance: 3Comp-CPE
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1301332d-6012-443f-9690-72913db2e3cc"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(3Pat-HF)
* date = "2023-08-05T11:30:00+02:00"
* author = Reference(3Org-Labor)
* title = "Laborbericht vom 05.08.2023"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(3Obs-CPE)

Instance: 3DR-CPE
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/3Comp-CPE)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1301332d-6012-443f-9690-72913db2e3cc"
* basedOn = Reference(3SR-Order)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(3Pat-HF)
* performer = Reference(3Org-Labor)
* specimen = Reference(3Spec-Specimen)
* result = Reference(3Obs-CPE)

Instance: 3Pat-HF
InstanceOf: ChElmPatient
Usage: #inline
* identifier.system = "urn:oid:2.16.756.5.32"
* identifier.value = "7561234567897"
* name.family = "F"
* name.given = "H"
* gender = #female
* birthDate = "1985-10-17"
* address[home].use = #home
* address[home].city = "Derendingen"
* address[home].state = "SO"
* address[home].postalCode = "4552"
* address[home].country = "CH"
* address[home].country.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-SC-coding"
* address[home].country.extension.valueCoding = urn:iso:std:iso:3166#CH


Instance: 3Obs-CPE
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#85827-4 "Carbapenem resistance bla OXA-48-like gene [Presence] by Molecular method"
* subject = Reference(3Pat-HF)
* effectiveDateTime = "2023-08-04T08:25:00+02:00"
* performer = Reference(3Org-Labor)
* valueCodeableConcept = $sct#56415008 "Klebsiella pneumoniae (organism)"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(3Spec-Specimen)

Instance: 3Spec-Specimen
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(3Pat-HF)
* collection.collectedDateTime = "2023-08-01"

Instance: 3SR-Order
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.system = "http://fhir.lab.ch/order-identifier"
* identifier.value = "34854112365"
* status = #completed
* intent = #order
* code = $loinc#85827-4 "Carbapenem resistance bla OXA-48-like gene [Presence] by Molecular method"
* subject = Reference(3Pat-HF)
* requester = Reference(3PR-KsAbc)
* specimen = Reference(3Spec-Specimen)

Instance: 3Org-Labor
InstanceOf: ChElmOrganizationLab
Usage: #inline
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601002331470"
* name = "SanLab"

Instance: 3PR-KsAbc
InstanceOf: ChElmPractitionerRoleOrderer
Usage: #inline
* practitioner = Reference(3Pract-KsAbc)
* organization = Reference(3Org-KsAbc)

Instance: 3Pract-KsAbc
InstanceOf: ChElmPractitionerOrderer
Usage: #inline
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000234438"
* name.family = "Giacometti"
* name.given = "Monika"
* telecom[0].system = #email
* telecom[=].value = "m.giacometti@ks-abc.ch"
* telecom[+].system = #phone
* telecom[=].value = "+41 79 111 44 55"

Instance: 3Org-KsAbc
InstanceOf: ChElmOrganizationOrderer
Usage: #inline
* extension.url = "http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-ext-department"
* extension.valueString = "Abteilung 2"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601888888884"
* name = "Kantonsspital ABC"
* address.line.extension[streetName].valueString = "Aortastrasse"
* address.line.extension[houseNumber].valueString = "22"
* address.line.extension[postOfficeBoxNumber].valueString = "18"
* address.city = "Bern"
* address.postalCode = "3000"
