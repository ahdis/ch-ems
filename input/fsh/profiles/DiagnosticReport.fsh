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
* specimen 1..
* specimen only Reference(ChElmSpecimen)
* basedOn 1..
* basedOn only Reference(ChElmServiceRequestLaboratoryOrder)




Profile: ChElmDiagnosticReportNeisseriaGonorrhoeae
Parent: ChElmDiagnosticReport
Id: ch-elm-diagnosticreport-neisseria-gonorrhoeae
Title: "CH ELM DiagnosticReport: Neisseria Gonorrhoeae"
Description: "This CH ELM profile constrains the DiagnosticReport resource for the purpose of laboratory test reports for neisseria gonorrhoeae."
* . ^short = "CH ELM DiagnosticReport: Neisseria Gonorrhoeae"
* code = $sct#68704007 
* code ^short = "Neisseria gonorrhoeae (organism)"
* result only Reference(ChElmObservationResultsNeisseriaGonorrhoeae)
