Instance: 1Comp-NeisseriaGonorrhoeae
InstanceOf: ChElmComposition
Usage: #example
Title: "1Comp - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Composition: Laboratory Report"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* status = #final
* type[0].coding[0] = $sct#4241000179101 "Laborbericht"
* type[=].coding[=].version = "http://snomed.info/sct/2011000195101"
* type[=].coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(Pat-001)
* date = "2023-07-14T16:00:00+02:00"
* author = Reference(1Org-Labor)
* title = "Laborbericht vom 14.07.2023"
* section[lab-no-subsections].title = "Analyseergebnisse der mikrobiologischen Untersuchung"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(1Obs-NeisseriaGonorrhoeae)
