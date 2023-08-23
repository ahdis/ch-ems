Profile: ChElmObservationResultsLaboratory
Parent: ChLabObservationResultsLaboratory
Id: ch-elm-observation-results-laboratory
Title: "CH ELM Observation Results: Laboratory"
Description: "This CH ELM base profile constrains the Observation resource for the purpose of laboratory test reports."
* . ^short = "CH ELM Observation Results: Laboratory"
* status = #final
* code only ChElmCodeableConcept
* code from ChElmResultsLaboratoryObservation (required)
* subject only Reference(ChElmPatient)
* subject 1..
* effective[x] 1..
* effectiveDateTime obeys ch-elm-dateTime
* valueCodeableConcept only ChElmCodeableConcept
* valueCodeableConcept from ChElmResultsCodedValuesLaboratory (required)
* performer 1..
* performer only Reference(ChElmPractitionerRoleLab)
* specimen only Reference(ChElmSpecimen)
* specimen 1..
* interpretation ..1
* interpretation from ChElmObservationInterpretationCodes (required)
