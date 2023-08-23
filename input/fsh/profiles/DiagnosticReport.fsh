Profile: ChElmDiagnosticReport
Parent: ChLabDiagnosticReport
Id: ch-elm-diagnosticreport
Title: "CH ELM DiagnosticReport: Laboratory Report"
Description: "This CH ELM base profile constrains the DiagnosticReport resource for the purpose of laboratory test reports."
* . ^short = "CH ELM DiagnosticReport: Laboratory Report"

* status = #final

* extension contains $extension-DiagnosticReport.composition named diagnosticReportCompositionR5 1..1
* extension[diagnosticReportCompositionR5].value[x] 1..
* extension[diagnosticReportCompositionR5].value[x] only Reference(ChElmComposition)

//* code from ChElmResultsLaboratoryObservation (required)
* code only ChElmCodeableConcept
* code ^short = "Laboratory report"
* code = $loinc#11502-2
* subject 1..
* subject only Reference(ChElmPatient)
* result 1..
* result only Reference(ChElmObservationResultsLaboratory)
* performer 1..
* performer only Reference(ChElmPractitionerRoleLab)
* specimen 1..
* specimen only Reference(ChElmSpecimen)
* basedOn 1..
* basedOn only Reference(ChElmServiceRequestLaboratoryOrder)


