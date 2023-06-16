Profile: ObservationResultsLaboratoryChElm
Parent: ObservationResultsLaboratoryChLab
Id: Observation-results-laboratory-ch-elm
Title: "Observation Results: laboratory (CH ELM)"
Description: "This CH ELM base profile constrains the Observation resource to represent results produced by laboratory tests."
* . ^short = "Observation Results: laboratory (CH ELM)"

* valueCodeableConcept 1..1
* valueCodeableConcept from ResultsCodedValuesLaboratoryChElm (preferred)


Mapping: eLM-for-ObservationResultsLaboratoryChElm
Source: ObservationResultsLaboratoryChElm
Target: "https://www.bag.admin.ch/bag/en/home.html"
Id: eLM
Title: "eLM"
Description: "Mapping of elements from the former FOPH eLM CSV format to the new FHIR format."
* valueCodeableConcept       -> "TestResultCode"
