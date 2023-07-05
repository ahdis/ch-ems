Profile: ChElmDiagnosticReport
Parent: ChLabDiagnosticReport
Id: ch-elm-diagnosticreport
Title: "CH ELM DiagnosticReport: Laboratory Report"
Description: "This CH ELM base profile constrains the DiagnosticReport resource for the purpose of laboratory test reports."
* . ^short = "CH ELM DiagnosticReport: Laboratory Report"
/*
* extension contains $extension-DiagnosticReport.composition named diagnosticReportCompositionR5 1..1
* extension[diagnosticReportCompositionR5].value[x] 1..
* extension[diagnosticReportCompositionR5].value[x] only Reference(ChElmComposition)
*/
* code from ChElmLabOrganismTypes (extensible)
* code only ChElmCodeableConcept
* subject 1..
* subject only Reference(ChElmPatient)
* result 1..
* result only Reference(ChElmObservationResultsLaboratory)
* performer 1..
* performer only Reference(ChElmPractitionerRoleReportingLab)

* specimen only Reference(ChElmSpecimen)
* basedOn 1..
* basedOn only Reference(ChElmServiceRequestLaboratoryOrder)
