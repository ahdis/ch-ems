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
* type[0].coding[0] = $sct#4241000179101 "Laborbericht"
* type[=].coding[=].version = "http://snomed.info/sct/2011000195101"
* type[=].coding[+] = $loinc#11502-2 "Laboratory report"
* subject = Reference(1Pat-DM)
* date = "2023-02-02T10:00:00+01:00"
* author = Reference(1PR-MedCompany)
// * confidentiality (CH Core EPR)
* attester.mode = #legal	
* attester.party = Reference(1PR-MedCompany)
* title = "Laborbericht vom 02.02.2023"

* section[0].title = "Neisseria Gonorrhoeae positiv"
* section[=].code = $loinc#26436-6 "Laboratory studies (set)"
* section[=].entry = Reference(1Obs-NeisseriaGonorrhoeae)



/*
Instance: Inline-Instance-for-IT-CDA2FHIR-17e2cad1-c3e3-4901-adb1-c35a0b82b883-1
InstanceOf: Composition
Usage: #inline
* id = "26032a57-083a-4ddf-b019-e566ae02f740"
* language = #it-IT
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.2.120.4.4"
* identifier.value = "c030702.TSTSMN63A01F205H.20220325112426.TSS1Tkju"
* identifier.assigner.display = "Regione Lazio"
* status = #final
* type = $loinc#11502-2 "Laboratory report"
* type.text = "Referto di laboratorio"
* subject = Reference(urn:uuid:dc2b606f-3cf7-4711-a2ff-52da04b89e04)
* encounter = Reference(urn:uuid:195a7abc-d109-404a-9dc7-ad2e80bafc8a)
* date = "2022-03-30T11:24:26+01:00"
* author[0] = Reference(urn:uuid:88868d3e-7ab1-4ee5-983e-b979c4971f5c)
* author[+] = Reference(urn:uuid:84b2e517-abc2-4268-975d-b12fa8174d30)
* title = "REFERTO DI LABORATORIO"
* confidentiality = #N
* attester[0].mode = #professional
* attester[=].party = Reference(urn:uuid:0bbabe57-7c43-4211-9e19-81fcec65686d)
* attester[+].mode = #legal
* attester[=].time = "2022-03-25T11:00:00+01:00"
* attester[=].party = Reference(urn:uuid:a199dc05-af73-44a0-a218-bda5dec557ce)
* attester[+].mode = #professional
* attester[=].time = "2022-03-25T11:00:00+01:00"
* attester[=].party = Reference(urn:uuid:13792187-4721-4309-a8a4-4a57ffb4e6a1)
* custodian = Reference(urn:uuid:a59d2bf2-7d6c-49a5-9ceb-c3f165ebd20d)
* event.period.start = "2022-03-24T11:24:26+01:00"
* event.detail = Reference(urn:uuid:1b4b120e-0371-4878-b4c9-b69434e84c72)
* section.title = "Esami delle Urine"
* section.code = $loinc#18729-4 "Urinalysis studies (set)"
* section.code.text = "ESAMI DELLE URINE"
* section.section.title = "Albumina nelle Urine"
* section.section.code.coding[0] = $loinc#14957-5 "Microalbumin [Mass/volume] in Urine"
* section.section.code.coding[+] = urn:oid:2.16.840.1.113883.2.9.2.30.6.11#0090334.02 "XXX"
* section.section.code.text = "Microalbumin Massa/Volume in Urine"
* section.section.text.status = #generated
* section.section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li><table id=\"nota1\"><thead><tr><th>Esame</th><th>Metodo utilizzato per l'esame</th><th>Materiale utilizzato per l'esame</th><th>Risultato dell'esame</th><th>Commenti e note</th><th>Unità di Misura</th><th>Range di Riferimento</th><th>Criteri per il range di riferimento</th><th>Interpretazione</th><th>Allegati multimediali</th></tr></thead><tbody><tr><td>Microalbumina massa/volume in urine</td><td/><td>Urine</td><td>20</td><td/><td>mg/L</td><td>0 - 20</td><td/><td>N</td><td/></tr></tbody></table></li></ul></div>"
* section.section.entry = Reference(urn:uuid:763f7902-8103-4d10-8bd1-546a726d43ee)
*/