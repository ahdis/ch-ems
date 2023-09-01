Profile: ChElmSpecimen
Parent: ChLabSpecimen
Id: ch-elm-specimen
Title: "CH ELM Specimen: Laboratory"
Description: "This CH ELM base profile constrains the Observation resource for the purpose of laboratory test reports."
* . ^short = "CH Lab Specimen: Laboratory"

* type 1.. // Req. EU LAB
* type.coding MS
* type.coding.system 1..
* type.coding.code 1..
* type from ChElmLabSpecimenTypes (extensible) // required: No code provided, and a code is required from the value set 'CH ELM Lab Specimen Types' (http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-lab-specimen-types|0.1.0)
* type.text = "Material declared by LOINC system axis"

* subject 1..
* subject only Reference(ChElmPatient)

* collection.collectedDateTime obeys ch-elm-dateTime
