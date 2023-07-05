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
* entry[ServiceRequest].resource only ChElmServiceRequestLaboratoryOrder
* entry[ServiceRequest] 1..
* entry[PractitionerRole].resource only ChElmPractitionerRole
* entry[PractitionerRole] 1..
* entry[Practitioner].resource only ChElmPractitioner
* entry[Practitioner] 1..
* entry[Organization].resource only ChElmOrganization
* entry[Organization] 1..








Profile: ChElmDocumentNeisseriaGonorrhoeae
Parent: ChElmDocument
Id: ch-elm-document-neisseria-gonorrhoeae
Title: "CH ELM Document: Neisseria Gonorrhoeae"
Description: "This CH ELM profile constrains the Bundle resource for the purpose of laboratory test reports for neisseria gonorrhoeae."
* . ^short = "CH ELM Document: Neisseria Gonorrhoeae"
* entry[DiagnosticReport].resource only ChElmDiagnosticReportNeisseriaGonorrhoeae
//* entry[Patient].resource only ChElmPatient // TODO
* entry[Observation].resource only ChElmObservationResultsNeisseriaGonorrhoeae
