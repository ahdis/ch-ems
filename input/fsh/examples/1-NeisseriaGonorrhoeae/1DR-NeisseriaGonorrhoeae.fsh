Instance: 1DR-NeisseriaGonorrhoeae
InstanceOf: ChElmDiagnosticReport
Usage: #example
Title: "1DR - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM DiagnosticReport: Laboratory Report."
* extension[diagnosticReportCompositionR5].valueReference = Reference(1Comp-NeisseriaGonorrhoeae)
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(1Pat-DM)
* result = Reference(1Obs-NeisseriaGonorrhoeae)
* performer = Reference(1PR-LaborViollier)
* basedOn = Reference(1SR-Order)
* specimen = Reference(1Spec-Specimen)
