Profile: ChElmDiagnosticReport
Parent: ChLabDiagnosticReport
Id: ch-elm-diagnosticreport
Title: "CH ELM DiagnosticReport: Laboratory Report"
Description: "This CH ELM base profile constrains the DiagnosticReport resource for the purpose of laboratory test reports."
* . ^short = "CH ELM DiagnosticReport: Laboratory Report"
* identifier ^short = "Persistent, unique identifier for the diagnostic report (UUID)"
* identifier 1..1
* identifier.system 1..
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value 1..
* identifier.value obeys ch-elm-doc-identifier
* identifier.value ^example.label = "CH ELM"
* identifier.value ^example.valueString = "urn:uuid:d494503a-7bef-4551-853c-f3dced2c518f"
* status = #final
* subject 1..
* subject only Reference(ChElmPatient)
* result 1..1
* result only Reference(ChElmObservationResultsLaboratory)
* performer 1..1
* performer only Reference(ChElmOrganizationLab)
* specimen 1..1
* specimen only Reference(ChElmSpecimen)
* basedOn 1..1
* basedOn only Reference(ChElmServiceRequestLaboratoryOrder)


