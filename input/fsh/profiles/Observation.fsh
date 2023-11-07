Profile: ChElmObservationResultsLaboratory
Parent: ChLabObservationResultsLaboratory
Id: ch-elm-observation-results-laboratory
Title: "CH ELM Observation Results: Laboratory"
Description: "This CH ELM base profile constrains the Observation resource for the purpose of laboratory test reports."
* obeys ch-elm-expecting-specimen-specification
* obeys ch-elm-material
* . ^short = "CH ELM Observation Results: Laboratory"
* status = #final
* code from ChElmResultsLaboratoryObservation (extensible)
* code only ChElmCodeableConcept
* subject only Reference(ChElmPatient)
* subject 1..
* effective[x] 1..
* effectiveDateTime 1..
* effectiveDateTime obeys ch-elm-dateTime

* value[x] 1..
* valueQuantity 0..1
// * valueQuantity only ChElmQuantity
* valueCodeableConcept 0..1
* valueCodeableConcept only ChElmCodeableConcept
* valueCodeableConcept from ChElmResultsCodedValuesLaboratory (preferred) // not required, because the additional organism codes come from other valuesets
* valueCodeableConcept ^short = "Positive/Negative or code for an additional organism specification, see also 'Guidance - Laboratory Result'"

* performer 1..1
* performer only Reference(ChElmOrganizationLab)
* specimen only Reference(ChElmSpecimen)
* specimen 1..
* interpretation 1..1
* interpretation from ChElmObservationInterpretationCodes (required)
* interpretation only ChElmCodeableConcept





Profile: ChElmObservationResultsLaboratoryStrict
Parent: ChElmObservationResultsLaboratory
Id: ch-elm-observation-results-laboratory-strict
Title: "CH ELM Observation Results: Laboratory (strict)"
Description: "CH ELM profile for the Observation resource with a stricter validation mechanism than the base profile via binding strength reinforcement for the leading code element."
* code from ChElmResultsLaboratoryObservation (required)
