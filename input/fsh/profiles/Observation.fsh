Profile: ChElmObservationResultsLaboratory
Parent: ChLabObservationResultsLaboratory
Id: ch-elm-observation-results-laboratory
Title: "CH ELM Observation Results: Laboratory"
Description: "This CH ELM base profile constrains the Observation resource for the purpose of laboratory test reports."
* . ^short = "CH ELM Observation Results: Laboratory"

* code only ChElmCodeableConcept
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    neisseriaGonorrhoeae 0..1
* code.coding[neisseriaGonorrhoeae] from ChElmResultsNeisseriaGonorrhoeae (required)

* subject only Reference(ChElmPatient)
* subject 1..

* effective[x] 1..
* effectiveDateTime obeys ch-elm-dateTime

* value[x] 1..
* valueCodeableConcept only ChElmCodeableConcept
* valueCodeableConcept from ChElmResultsCodedValuesLaboratory (extensible)

* performer 1..
* performer only Reference(ChElmPractitionerRoleReportingLab)

* specimen 1..
* specimen only Reference(ChElmSpecimen)