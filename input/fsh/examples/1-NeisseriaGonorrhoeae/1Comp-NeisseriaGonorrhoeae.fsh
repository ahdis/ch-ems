Instance: 1Comp-NeisseriaGonorrhoeae
InstanceOf: ChElmComposition
Usage: #example
Title: "1Comp - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Composition: Laboratory Report."
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab"

* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* status = #final
* type.coding[+] = $sct#4241000179101 "Laborbericht"
* type.coding[=].version = "http://snomed.info/sct/2011000195101"
* subject = Reference(1Pat-DM)
* date = "2023-02-02T10:00:00+01:00"
* author = Reference(1PR-MedCompany)
* title = "Laborbericht vom 02.02.2023"

* section[0].title = "Neisseria Gonorrhoeae positiv"
* section[=].code = $loinc#26436-6 "Laboratory studies (set)"
* section[=].entry = Reference(1Obs-NeisseriaGonorrhoeae)
