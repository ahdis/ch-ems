Profile: ChElmSpecimen
Parent: ChLabSpecimen
Id: ch-elm-specimen
Title: "CH ELM Specimen: Laboratory"
Description: "This CH ELM base profile constrains the Specimen resource for the purpose of laboratory test reports."
* . ^short = "CH Lab Specimen: Laboratory"

* type ^short = "The mechanism to declare the collection material is described under 'Guidance - Laboratory Result'"
* type.coding only ChElmCoding
* type.coding from ChElmResultsCompleteSpec (required)
* type.coding ..1

* subject 1..
* subject only Reference(ChElmPatient)

* collection MS
* collection.collectedDateTime obeys ch-elm-dateTime
* collection.collectedDateTime MS
