Instance: 1bDR-NeisseriaGonorrhoeae
InstanceOf: ChElmDiagnosticReport
Usage: #example
Title: "1bDR - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM DiagnosticReport: Laboratory Report"
* extension[DiagnosticReportCompositionR5].url = $diagnostic-report-composition-r5
* extension[DiagnosticReportCompositionR5].valueReference = Reference(Composition/1bComp-NeisseriaGonorrhoeae)
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291df32e177"
* status = #final
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-001)
* result = Reference(1bObs-NeisseriaGonorrhoeae)
* performer = Reference(1bOrg-Labor)
* basedOn = Reference(1bSR-Order)
* specimen = Reference(1bSpec-Specimen)
