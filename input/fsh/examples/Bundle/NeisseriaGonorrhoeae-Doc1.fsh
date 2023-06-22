Instance: NeisseriaGonorrhoeae-Doc1
InstanceOf: ChElmDocument
Usage: #example
Title: "Neisseria Gonorrhoeae Doc1"
Description: "Example of a Document for a Neisseria Gonorrhoeae laboratory result."

* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* type = #document
* timestamp = "2023-02-02T10:00:00+01:00"

* entry[Composition].fullUrl = "http://test.fhir.ch/r4/Composition/NeisseriaGonorrhoeae-Comp1"
* entry[Composition].resource = NeisseriaGonorrhoeae-Comp1
* entry[DiagnosticReport].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/NeisseriaGonorrhoeae-DR1"
* entry[DiagnosticReport].resource = NeisseriaGonorrhoeae-DR1
* entry[Patient].fullUrl = "http://test.fhir.ch/r4/Patient/DM"
* entry[Patient].resource = DM
* entry[Observation].fullUrl = "http://test.fhir.ch/r4/Observation/NeisseriaGonorrhoeae-Obs1"
* entry[Observation].resource = NeisseriaGonorrhoeae-Obs1
//* entry[Specimen].fullUrl = "http://test.fhir.ch/r4/Specimen/"
//* entry[Specimen].resource = 
* entry[PractitionerRole].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/PractRole"
* entry[PractitionerRole].resource = PractRole
* entry[Practitioner].fullUrl = "http://test.fhir.ch/r4/Practitioner/Pract"
* entry[Practitioner].resource = Pract
* entry[Organization].fullUrl = "http://test.fhir.ch/r4/Organization/Org"
* entry[Organization].resource = Org
