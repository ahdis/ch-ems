Instance: 2Obs-NeisseriaGonorrhoeae
InstanceOf: ChElmObservationResultsNeisseriaGonorrhoeae
Usage: #example
Title: "2Obs - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Observation Results: Laboratory."

* status = #final
* category[0] = $observation-category#laboratory "Laboratory"
* code = $loinc#21416-3 "Neisseria gonorrhoeae DNA [Presence] in Urine by NAA with probe detection"
* subject = Reference(2Pat-DM)
* effectiveDateTime = "2023-02-01"
* performer = Reference(2PR-MedCompany)
* valueCodeableConcept = $sct#10828004 "Positive"
* specimen = Reference(2Spec-Specimen-PrimaryLab)

