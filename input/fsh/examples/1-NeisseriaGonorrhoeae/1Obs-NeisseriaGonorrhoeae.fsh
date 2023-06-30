Instance: 1Obs-NeisseriaGonorrhoeae
InstanceOf: ChElmObservationResultsNeisseriaGonorrhoeae
Usage: #example
Title: "1Obs - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Observation Results: Laboratory."

* status = #final
* category[0] = $observation-category#laboratory "Laboratory"
* code = $loinc#21416-3 "Neisseria gonorrhoeae DNA [Presence] in Urine by NAA with probe detection"
* subject = Reference(1Pat-DM)
* effectiveDateTime = "2023-02-01"
* performer = Reference(1PR-MedCompany)
* valueCodeableConcept = $sct#10828004 "Positive"
* specimen = Reference(1Spec-Specimen-PrimaryLab)

