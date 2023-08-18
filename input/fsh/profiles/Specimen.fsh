Profile: ChElmSpecimen
Parent: ChLabSpecimen
Id: ch-elm-specimen
Title: "CH ELM Specimen: Laboratory"
Description: "This CH ELM base profile constrains the Observation resource for the purpose of laboratory test reports."
* . ^short = "CH Lab Specimen: Laboratory"

* type 1.. // Req. EU LAB
* type only ChElmCodeableConcept
* type from ChElmLabSpecimenTypes (required)

* subject 1..
* subject only Reference(ChElmPatient)

* collection.collectedDateTime obeys ch-elm-dateTime
