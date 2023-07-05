Instance: 2Doc-NeisseriaGonorrhoeae
InstanceOf: ChElmDocumentNeisseriaGonorrhoeae // ChElmDocument
Usage: #example
Title: "2Doc - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Document: Laboratory Report."
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* type = #document
* timestamp = "2023-02-02T10:00:00+01:00"

* entry[Composition].fullUrl = "http://test.fhir.ch/r4/Composition/2Comp-NeisseriaGonorrhoeae"
* entry[Composition].resource = 2Comp-NeisseriaGonorrhoeae
* entry[DiagnosticReport].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/2DR-NeisseriaGonorrhoeae"
* entry[DiagnosticReport].resource = 2DR-NeisseriaGonorrhoeae
* entry[Patient].fullUrl = "http://test.fhir.ch/r4/Patient/2Pat-DM"
* entry[Patient].resource = 2Pat-DM
* entry[Observation].fullUrl = "http://test.fhir.ch/r4/Observation/2Obs-NeisseriaGonorrhoeae"
* entry[Observation].resource = 2Obs-NeisseriaGonorrhoeae
* entry[Specimen][0].fullUrl = "http://test.fhir.ch/r4/Specimen/2Spec-Specimen-Orderer"
* entry[Specimen][=].resource = 2Spec-Specimen-Orderer
* entry[Specimen][+].fullUrl = "http://test.fhir.ch/r4/Specimen/2Spec-Specimen-PrimaryLab"
* entry[Specimen][=].resource = 2Spec-Specimen-PrimaryLab
* entry[ServiceRequest][0].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/2SR-Order1-Orderer"
* entry[ServiceRequest][=].resource = 2SR-Order1-Orderer
* entry[ServiceRequest][+].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/2SR-Order2-PrimaryLab"
* entry[ServiceRequest][=].resource = 2SR-Order2-PrimaryLab
* entry[PractitionerRole][0].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/2PR-MedCompany"
* entry[PractitionerRole][=].resource = 2PR-MedCompany
* entry[PractitionerRole][+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/2PR-CentreDeTestXa"
* entry[PractitionerRole][=].resource = 2PR-CentreDeTestXa
* entry[PractitionerRole][+].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/2PR-SuperLabor"
* entry[PractitionerRole][=].resource = 2PR-SuperLabor
* entry[Practitioner][0].fullUrl = "http://test.fhir.ch/r4/Practitioner/2Pract-MedCompany"
* entry[Practitioner][=].resource = 2Pract-MedCompany
* entry[Practitioner][+].fullUrl = "http://test.fhir.ch/r4/Practitioner/2Pract-CentreDeTestXa"
* entry[Practitioner][=].resource = 2Pract-CentreDeTestXa
* entry[Practitioner][+].fullUrl = "http://test.fhir.ch/r4/Practitioner/2Pract-SuperLabor"
* entry[Practitioner][=].resource = 2Pract-SuperLabor
* entry[Organization][0].fullUrl = "http://test.fhir.ch/r4/Organization/2Org-MedCompany"
* entry[Organization][=].resource = 2Org-MedCompany
* entry[Organization][+].fullUrl = "http://test.fhir.ch/r4/Organization/2Org-CentreDeTestXa"
* entry[Organization][=].resource = 2Org-CentreDeTestXa
* entry[Organization][+].fullUrl = "http://test.fhir.ch/r4/Organization/2Org-SuperLabor"
* entry[Organization][=].resource = 2Org-SuperLabor
