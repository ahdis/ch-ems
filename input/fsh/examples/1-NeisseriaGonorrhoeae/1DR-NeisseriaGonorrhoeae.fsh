Instance: 1DR-NeisseriaGonorrhoeae
InstanceOf: ChElmDiagnosticReport
Usage: #example
Title: "1DR - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM DiagnosticReport: Laboratory Report."

* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension[=].valueReference = Reference(1Comp-NeisseriaGonorrhoeae)
* status = #final
* code = $loinc#11502-2	"Laboratory report"
* subject = Reference(1Pat-DM)
* result = Reference(1Obs-NeisseriaGonorrhoeae)
* performer = Reference(1PR-MedCompany)



/*
https://fshschool.org/FSHOnline/#/share/3XaAudr
Instance: Inline-Instance-for-BundleLabResultReportPOC-2
InstanceOf: DiagnosticReport
Usage: #inline
* id = "3a743273-237a-446a-a8da-9e7521cce614"
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab"
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(Composition/4028a0b8-37fc-4491-a8e7-0f28e6fc59b4)
* status = #final
* category = $v2-0074#MB "Microbiology"
* code = $loinc#11502-2 "Laboratory report"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer.display = "MUDr. Aleš Procházka"
* result = Reference(Observation/8bd279af-125a-4318-b461-ba5629b12e7f)
*/