Instance: 1Obs-NeisseriaGonorrhoeae
InstanceOf: ChElmObservationResultsLaboratory
Usage: #example
Title: "1Obs - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Observation Results: Laboratory."
* status = #final
* category[0] = $observation-category#laboratory "Laboratory"
* code = $loinc#697-3 "Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture"
* subject = Reference(1Pat-DM)
* effectiveDateTime = "2023-07-14"
* performer = Reference(1PR-LaborViollier)
* valueCodeableConcept = $sct#10828004 "Positive"
* specimen = Reference(1Spec-Specimen)
