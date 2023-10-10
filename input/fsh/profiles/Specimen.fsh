Profile: ChElmSpecimen
Parent: ChLabReportSpecimen
Id: ch-elm-specimen
Title: "CH ELM Specimen: Laboratory"
Description: "This CH ELM base profile constrains the Specimen resource for the purpose of laboratory test reports."
* . ^short = "CH Lab Specimen: Laboratory"

* type 1.. // Req. EU LAB
* type.coding ^short = "If the collection material is not declared by LOINC system axis (Observation.code)"
* type.coding only ChElmCoding
* type from ChElmLabSpecimenTypes (extensible) // 'required' not possible: No code provided, and a code is required from the value set 'CH ELM Lab Specimen Types' (http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-lab-specimen-types|0.1.0)
* type.text ^short = "If the collection material is declared by LOINC system axis (Observation.code)"
* type.text = "Material declared by LOINC system axis"

* subject 1..
* subject only Reference(ChElmPatient)

* collection.collectedDateTime obeys ch-elm-dateTime
* collection.collectedDateTime MS
