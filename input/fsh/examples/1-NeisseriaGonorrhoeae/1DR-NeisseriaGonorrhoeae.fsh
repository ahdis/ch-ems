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
* basedOn = Reference(1SR-Order2-PrimaryLab)
* specimen = Reference(1Spec-NeisseriaGonorrhoeae)



/*
Instance: Inline-Instance-for-IT-CDA2FHIR-17e2cad1-c3e3-4901-adb1-c35a0b82b883-18
InstanceOf: DiagnosticReport
Usage: #inline
* id = "5679723c-4fae-4ba7-9f09-5438a827bfda"
* extension.url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition"
* extension.valueReference = Reference(Composition/26032a57-083a-4ddf-b019-e566ae02f740)
* status = #registered
* category = $v2-0074#LAB "Laboratory"
* code = $loinc#14957-5 "Microalbumin [Mass/volume] in Urine"
* code.text = "Microalbumin Massa/Volume in Urine"
* subject = Reference(urn:uuid:dc2b606f-3cf7-4711-a2ff-52da04b89e04)
* encounter = Reference(urn:uuid:195a7abc-d109-404a-9dc7-ad2e80bafc8a)
* specimen = Reference(urn:uuid:5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb)
* result = Reference(urn:uuid:763f7902-8103-4d10-8bd1-546a726d43ee)
*/