Instance: 2DR-NeisseriaGonorrhoeae
InstanceOf: ChElmDiagnosticReportNeisseriaGonorrhoeae // ChElmDiagnosticReport
Usage: #example
Title: "2DR - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM DiagnosticReport: Laboratory Report."

* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[=].valueReference = Reference(2Comp-NeisseriaGonorrhoeae)
* status = #final
* code = $sct#68704007 "Neisseria gonorrhoeae (organism)"
* subject = Reference(2Pat-DM)
* result = Reference(2Obs-NeisseriaGonorrhoeae)
* performer = Reference(2PR-MedCompany)
* basedOn = Reference(2SR-Order2-PrimaryLab)
* specimen = Reference(2Spec-Specimen-PrimaryLab)

