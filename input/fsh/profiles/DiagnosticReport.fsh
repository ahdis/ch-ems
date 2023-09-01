Profile: ChElmDiagnosticReport
Parent: ChLabDiagnosticReport
Id: ch-elm-diagnosticreport
Title: "CH ELM DiagnosticReport: Laboratory Report"
Description: "This CH ELM base profile constrains the DiagnosticReport resource for the purpose of laboratory test reports."
* . ^short = "CH ELM DiagnosticReport: Laboratory Report"

* status = #final

* subject 1..
* subject only Reference(ChElmPatient)
* result 1..
* result only Reference(ChElmObservationResultsLaboratory)
* performer 1..
* performer only Reference(ChElmOrganizationLab)
* specimen 1..
* specimen only Reference(ChElmSpecimen)
* basedOn 1..
* basedOn only Reference(ChElmServiceRequestLaboratoryOrder)


