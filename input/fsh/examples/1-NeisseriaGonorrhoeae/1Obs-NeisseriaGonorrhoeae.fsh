Instance: 1Obs-NeisseriaGonorrhoeae
InstanceOf: ChElmObservationResultsLaboratory
Usage: #example
Title: "1Obs - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Observation Results: Laboratory."

* status = #final
* category[0] = $observation-category#laboratory "Laboratory"
* code.coding[neisseriaGonorrhoeae] = $loinc#14127-5 "Neisseria gonorrhoeae [Presence] in Anal by Organism specific culture"
* subject = Reference(1Pat-DM)
* effectiveDateTime = "2023-02-01"
* performer = Reference(1PR-MedCompany)
* valueCodeableConcept = $sct#10828004 "Positive"



/*
https://fshschool.org/FSHOnline/#/share/3XaAudr
Instance: Inline-Instance-for-BundleLabResultReportPOC-4
InstanceOf: Observation
Usage: #inline
* id = "8bd279af-125a-4318-b461-ba5629b12e7f"
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-resultslab-eu-lab"
* status = #final
* category[0] = $observation-category#laboratory
* category[+] = $v2-0074#MB "Microbiology"
* code = $lab-localCs-eu-lab#3002989 "Hepatitis Panel, Acute with Reflex to HBsAg Confirmation and Reflex to HCV by Quantitative NAAT"
* code.text = "Acute Hepatitis Panel, reflex to confirmation"
* subject = Reference(Patient/8472931c-fbd0-437b-9ed1-4f66472c78b5)
* effectiveDateTime = "2022-10-25T13:35:00+01:00"
* performer.display = "Dr. Patrick Dempsey"
* hasMember = Reference(Observation/4e67180b-e419-4c11-8cbd-e946900a9dbe)
*/
