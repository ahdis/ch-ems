Profile: ChElmSpecimen
Parent: ChLabSpecimen
Id: ch-elm-specimen
Title: "CH ELM Specimen: Laboratory"
Description: "This CH ELM base profile constrains the Observation resource for the purpose of laboratory test reports."
* . ^short = "CH Lab Specimen: Laboratory"

* type 1..

* subject 1..
* subject only Reference(ChElmPatient)

* collection 1..
* collection.collected[x] 1..