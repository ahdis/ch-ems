Profile: ObservationResultsLaboratoryChElm
Parent: ObservationResultsLaboratoryChLab
Id: Observation-results-laboratory-ch-elm
Title: "Observation Results: laboratory (CH ELM)"
Description: "This CH ELM base profile constrains the Observation resource to represent results produced by laboratory tests."
* . ^short = "Observation Results: laboratory (CH ELM)"

* subject only Reference(PatientChElm)
* subject 1..

* effective[x] only dateTime
* effectiveDateTime 1..
* effectiveDateTime obeys ch-elm-dateTime

* valueCodeableConcept 1..
* valueCodeableConcept only CodeableConceptChElm
* valueCodeableConcept from ResultsCodedValuesLaboratoryChElm (preferred)

* method 1..
* method only CodeableConceptChElm
* method from DetectionMethodCodedValuesLaboratoryChElm (preferred)



Mapping: eLM-for-ObservationResultsLaboratoryChElm
Source: ObservationResultsLaboratoryChElm
Target: "https://www.bag.admin.ch/bag/en/home.html"
Id: eLM
Title: "eLM"
Description: "Mapping of elements from the former FOPH eLM CSV format to the new FHIR format."
* effectiveDateTime         -> "TestYearOfExecution-TestMonthOfExecution-TestDayOfExecution"
* valueCodeableConcept      -> "TestResultCode"
* method                    -> "TestDetectionCode"
