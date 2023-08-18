Profile: ChElmDocument
Parent: ChLabDocument
Id: ch-elm-document
Title: "CH ELM Document: Laboratory Report"
Description: "This CH ELM base profile constrains the Bundle resource for the purpose of laboratory test reports."
* . ^short = "CH ELM Document: Laboratory Report"
* entry[Composition].resource only ChElmComposition
* entry[DiagnosticReport].resource only ChElmDiagnosticReport
* entry[Patient].resource only ChElmPatient
* entry[Patient] 1..
* entry[Observation].resource only ChElmObservationResultsLaboratory
* entry[Observation] 1..
* entry[Specimen].resource only ChElmSpecimen
* entry[Specimen] 1..
* entry[ServiceRequest].resource only ChElmServiceRequestLaboratoryOrder
* entry[ServiceRequest] 1..
* entry[PractitionerRole].resource only ChElmPractitionerRole
* entry[PractitionerRole] 1..
* entry[Practitioner].resource only ChElmPractitioner
* entry[Practitioner] 1..
* entry[Organization].resource only ChElmOrganization
* entry[Organization] 1..


