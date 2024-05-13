Instance: 5Doc-TreponemaPallidum
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "5Doc - Treponema pallidum"
Description: "Example for a CH ELM Document: Laboratory Report (SNOMED CT as leading code)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb234fe"
* type = #document
* timestamp = "2023-09-15T11:00:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/5Comp-TreponemaPallidum"
* entry[=].resource = 5Comp-TreponemaPallidum
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/5DR-TreponemaPallidum"
* entry[=].resource = 5DR-TreponemaPallidum
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/1Pat-DM"
* entry[=].resource = 1Pat-DM
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/5Obs-TreponemaPallidum"
* entry[=].resource = 5Obs-TreponemaPallidum
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/5Spec-Specimen"
* entry[=].resource = 5Spec-Specimen
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/5SR-Order"
* entry[=].resource = 5SR-Order
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/1PR-KsAbc"
* entry[=].resource = 1PR-KsAbc
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/1Pract-KsAbc"
* entry[=].resource = 1Pract-KsAbc
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-KsAbc"
* entry[=].resource = 1Org-KsAbc

Instance: 5Comp-TreponemaPallidum
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb234fe"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(1Pat-DM)
* date = "2023-09-15T11:00:00+02:00"
* author = Reference(1Org-Labor)
* title = "Laborbericht vom 15.09.2023"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(5Obs-TreponemaPallidum)

Instance: 5DR-TreponemaPallidum
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/5Comp-TreponemaPallidum)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb234fe"
* basedOn = Reference(5SR-Order)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(1Pat-DM)
* performer = Reference(1Org-Labor)
* specimen = Reference(5Spec-Specimen)
* result = Reference(5Obs-TreponemaPallidum)

Instance: 5Obs-TreponemaPallidum
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $sct#72904005 "Treponema pallidum (organism)"
* subject = Reference(1Pat-DM)
* effectiveDateTime = "2023-09-15T09:15:00+02:00"
* performer = Reference(1Org-Labor)
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(5Spec-Specimen)

Instance: 5Spec-Specimen
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(1Pat-DM)
* collection.collectedDateTime = "2023-09-12"

Instance: 5SR-Order
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.system = "http://fhir.lab.ch/order-identifier"
* identifier.value = "23846922417"
* status = #completed
* intent = #order
* code = $sct#72904005 "Treponema pallidum (organism)"
* subject = Reference(1Pat-DM)
* requester = Reference(1PR-KsAbc)
* specimen = Reference(5Spec-Specimen)

