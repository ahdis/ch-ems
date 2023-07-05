Instance: 1DR-NeisseriaGonorrhoeae
InstanceOf: ChElmDiagnosticReportNeisseriaGonorrhoeae
Usage: #example
Title: "1DR - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM DiagnosticReport: Laboratory Report."

* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[=].valueReference = Reference(1Comp-NeisseriaGonorrhoeae)
* status = #final
* code = $sct#68704007 "Neisseria gonorrhoeae (organism)"
* subject = Reference(1Pat-DM)
* result = Reference(1Obs-NeisseriaGonorrhoeae)
* performer = Reference(1PR-MedCompany)
* basedOn = Reference(1SR-Order1-Orderer)
* specimen = Reference(1Spec-Specimen-Orderer)

