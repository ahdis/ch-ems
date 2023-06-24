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
* specimen = Reference(1Spec-NeisseriaGonorrhoeae)



/* Composition.section
Instance: Inline-Instance-for-IT-CDA2FHIR-17e2cad1-c3e3-4901-adb1-c35a0b82b883-19
InstanceOf: Observation
Usage: #inline
* id = "763f7902-8103-4d10-8bd1-546a726d43ee"
* status = #final
* code.coding[0] = $loinc#14957-5 "Microalbumin [Mass/volume] in Urine"
* code.coding[+] = urn:oid:2.16.840.1.113883.2.9.2.30.6.11#0090334.02 "Albumina nelle urine"
* code.text = "Microalbumin Massa/Volume in Urine"
* subject = Reference(urn:uuid:dc2b606f-3cf7-4711-a2ff-52da04b89e04)
* encounter = Reference(urn:uuid:195a7abc-d109-404a-9dc7-ad2e80bafc8a)
* effectiveDateTime = "2022-03-30T11:24:26+01:00"
* valueQuantity.value = 16
* valueQuantity.unit = "mg/L"
* interpretation = urn:oid:2.16.840.1.113883.5.83#N "Normal"
* specimen = Reference(urn:uuid:5837e9bf-8a2b-43c3-bec8-d68dbd7fa7fb)
* referenceRange.low.value = 0
* referenceRange.low.unit = "mg/L"
* referenceRange.high.value = 20
* referenceRange.high.unit = "mg/L"
* referenceRange.type = urn:oid:2.16.840.1.113883.5.83#N "Normal"
*/
