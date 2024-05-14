Instance: 4Doc-Campylobacter
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "4Doc - Campylobacter spp."
Description: "Example for a CH ELM Document: Laboratory Report"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2cb3b"
* type = #document
* timestamp = "2023-09-20T07:35:00+02:00"
* entry[0].fullUrl = "http://test.fhir.ch/r4/Composition/4Comp-Campylobacter"
* entry[=].resource = 4Comp-Campylobacter
* entry[+].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/4DR-Campylobacter"
* entry[=].resource = 4DR-Campylobacter
* entry[+].fullUrl = "http://test.fhir.ch/r4/Patient/Pat-HF"
* entry[=].resource = Pat-HF
* entry[+].fullUrl = "http://test.fhir.ch/r4/Observation/4Obs-Campylobacter"
* entry[=].resource = 4Obs-Campylobacter
* entry[+].fullUrl = "http://test.fhir.ch/r4/Specimen/4Spec-Specimen"
* entry[=].resource = 4Spec-Specimen
* entry[+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/4SR-Order"
* entry[=].resource = 4SR-Order
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-Labor"
* entry[=].resource = 1Org-Labor
* entry[+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/1PR-KsAbc"
* entry[=].resource = 1PR-KsAbc
* entry[+].fullUrl = "http://test.fhir.ch/r4/Practitioner/1Pract-KsAbc"
* entry[=].resource = 1Pract-KsAbc
* entry[+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-KsAbc"
* entry[=].resource = 1Org-KsAbc

Instance: 4Comp-Campylobacter
InstanceOf: ChElmComposition
Usage: #inline
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2cb3b"
* status = #final
* type.coding[0].version = "http://snomed.info/sct/2011000195101"
* type.coding[=] = $sct#4241000179101 "Laborbericht"
* type.coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-HF)
* date = "2023-09-20T07:35:00+02:00"
* author = Reference(1Org-Labor)
* title = "Laborbericht vom 20.09.2023"
* section.title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section.code = $loinc#18725-2 "Microbiology studies (set)"
* section.entry = Reference(4Obs-Campylobacter)

Instance: 4DR-Campylobacter
InstanceOf: ChElmDiagnosticReport
Usage: #inline
* extension[DiagnosticReportCompositionR5].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/4Comp-Campylobacter)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2cb3b"
* basedOn = Reference(4SR-Order)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-HF)
* performer = Reference(1Org-Labor)
* specimen = Reference(4Spec-Specimen)
* result = Reference(4Obs-Campylobacter)


Instance: 4Obs-Campylobacter
InstanceOf: ChElmObservationResultsLaboratory
Usage: #inline
* status = #final
* category[laboratory] = $observation-category#laboratory "Laboratory"
* code = $loinc#101552-8 "Campylobacter coli DNA [Presence] in Stool by NAA with probe detection"
* subject = Reference(Pat-HF)
* effectiveDateTime = "2023-09-19T17:50:00+02:00"
* performer = Reference(1Org-Labor)
* valueCodeableConcept = $sct#10828004 "Positive"
* interpretation = $v3-ObservationInterpretation#POS "Positive"
* specimen = Reference(4Spec-Specimen)

Instance: 4Spec-Specimen
InstanceOf: ChElmSpecimen
Usage: #inline
* type.text = "Material declared by Observation.code or non-mandatory"
* subject = Reference(Pat-HF)
* collection.collectedDateTime = "2023-09-18"

Instance: 4SR-Order
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #inline
* identifier.system = "http://fhir.lab.ch/order-identifier"
* identifier.value = "26955847714"
* status = #completed
* intent = #order
* code = $loinc#101552-8 "Campylobacter coli DNA [Presence] in Stool by NAA with probe detection"
* subject = Reference(Pat-HF)
* requester = Reference(1PR-KsAbc)
* specimen = Reference(4Spec-Specimen)
