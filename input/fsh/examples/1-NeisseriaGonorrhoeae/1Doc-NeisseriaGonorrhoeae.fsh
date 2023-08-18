Instance: 1Doc-NeisseriaGonorrhoeae
InstanceOf: ChElmDocument
Usage: #example
Title: "1Doc - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Document: Laboratory Report."
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* type = #document
* timestamp = "2023-07-14T16:00:00+02:00"

* entry[Composition].fullUrl = "http://test.fhir.ch/r4/Composition/1Comp-NeisseriaGonorrhoeae"
* entry[Composition].resource = 1Comp-NeisseriaGonorrhoeae
* entry[DiagnosticReport].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/1DR-NeisseriaGonorrhoeae"
* entry[DiagnosticReport].resource = 1DR-NeisseriaGonorrhoeae
* entry[Patient].fullUrl = "http://test.fhir.ch/r4/Patient/1Pat-DM"
* entry[Patient].resource = 1Pat-DM
* entry[Observation].fullUrl = "http://test.fhir.ch/r4/Observation/1Obs-NeisseriaGonorrhoeae"
* entry[Observation].resource = 1Obs-NeisseriaGonorrhoeae
* entry[Specimen][0].fullUrl = "http://test.fhir.ch/r4/Specimen/1Spec-Specimen"
* entry[Specimen][=].resource = 1Spec-Specimen
* entry[ServiceRequest][0].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/1SR-Order"
* entry[ServiceRequest][=].resource = 1SR-Order
* entry[PractitionerRole][0].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/1PR-LaborViollier"
* entry[PractitionerRole][=].resource = 1PR-LaborViollier
* entry[PractitionerRole][+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/1PR-FamilyPractice"
* entry[PractitionerRole][=].resource = 1PR-FamilyPractice
* entry[Practitioner][0].fullUrl = "http://test.fhir.ch/r4/Practitioner/1Pract-LaborViollier"
* entry[Practitioner][=].resource = 1Pract-LaborViollier
* entry[Practitioner][+].fullUrl = "http://test.fhir.ch/r4/Practitioner/1Pract-FamilyPractice"
* entry[Practitioner][=].resource = 1Pract-FamilyPractice
* entry[Organization][0].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-LaborViollier"
* entry[Organization][=].resource = 1Org-LaborViollier
* entry[Organization][+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-FamilyPractice"
* entry[Organization][=].resource = 1Org-FamilyPractice

