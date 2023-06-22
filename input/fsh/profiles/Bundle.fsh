Profile: ChElmDocument
Parent: ChLabDocument
Id: ch-elm-document
Title: "CH ELM Document: Laboratory Report"
Description: "This CH ELM base profile constrains the Bundle resource for the purpose of laboratory test reports."
* . ^short = "CH ELM Document: Laboratory Report"

* entry[Composition].resource only ChElmComposition
* entry[DiagnosticReport].resource only ChElmDiagnosticReport
* entry[Patient].resource only ChElmPatient
* entry[Observation].resource only ChElmObservationResultsLaboratory
* entry[Specimen].resource only Specimen
* entry[PractitionerRole].resource only ChElmPractitionerRole
* entry[Practitioner].resource only ChElmPractitioner
* entry[Organization].resource only ChElmOrganization