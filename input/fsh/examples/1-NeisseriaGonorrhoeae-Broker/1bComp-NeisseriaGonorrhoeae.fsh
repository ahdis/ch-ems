Instance: 1bComp-NeisseriaGonorrhoeae
InstanceOf: ChElmComposition
Usage: #example
Title: "1bComp - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Composition: Laboratory Report"
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab"
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291df32e177"
* status = #final
* type[0].coding[0] = $sct#4241000179101 "Laborbericht"
* type[=].coding[=].version = "http://snomed.info/sct/2011000195101"
* type[=].coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(1Pat-DM)
* date = "2023-07-14T12:10:00+02:00"
* author = Reference(1bOrg-Broker)
* title = "Laborbericht MikroLab - 14.07.2023"
* section[lab-no-subsections].title = "Testergebnisse"
* section[lab-no-subsections].code = $loinc#18725-2 "Microbiology studies (set)"
* section[lab-no-subsections].entry = Reference(1bObs-NeisseriaGonorrhoeae)
