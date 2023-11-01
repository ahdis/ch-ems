Profile: ChElmSpecimen
Parent: ChLabReportSpecimen
Id: ch-elm-specimen
Title: "CH ELM Specimen: Laboratory"
Description: "This CH ELM base profile constrains the Specimen resource for the purpose of laboratory test reports."
* . ^short = "CH Lab Specimen: Laboratory"

* type 1.. // Req. EU LAB
* type ^short = "The mechanism to declare the collection material is described under 'Guidance - Laboratory Result'"
* type.coding ^short = "If the collection material is not declared by leading code (Observation.code)"
* type.coding only ChElmCoding
* type.text ^short = "If the collection material is declared by leading code (Observation.code)"
* type.text = "Material declared by Observation.code or non-mandatory"

* subject 1..
* subject only Reference(ChElmPatient)

* collection.collectedDateTime obeys ch-elm-dateTime
* collection.collectedDateTime MS
