Profile: DiagnosticReportChElm
Parent: DiagnosticReportChLab
Id: DiagnosticReport-ch-elm
Title: "DiagnosticReport (CH ELM)"
Description: "This CH ELM base profile constrains the DiagnosticReport resource to represent laboratory test reports."
* . ^short = "DiagnosticReport (CH ELM)"
* subject 1..
* subject only Reference(PatientChElm)
* result only Reference(ObservationResultsLaboratoryChElm)


Mapping: eLM-for-DiagnosticReportChElm
Source: DiagnosticReportChElm
Target: "https://www.bag.admin.ch/bag/en/home.html"
Id: eLM
Title: "eLM"
Description: "Mapping of elements from the former FOPH eLM CSV format to the new FHIR format."
* subject       -> "TBD"