Instance: 1bDoc-NeisseriaGonorrhoeae
InstanceOf: ChElmDocumentStrict
Usage: #example
Title: "1bDoc - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Document: Laboratory Report (where the 'Lab' is NOT the same as the 'Author' -> Broker Scenario)"
* meta.profile = "http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1901332d-6012-443f-9690-9291df32e177"
* type = #document
* timestamp = "2023-07-14T12:10:00+02:00"

* entry[Composition].fullUrl = "http://test.fhir.ch/r4/Composition/1bComp-NeisseriaGonorrhoeae"
* entry[Composition].resource = 1bComp-NeisseriaGonorrhoeae
* entry[DiagnosticReport].fullUrl = "http://test.fhir.ch/r4/DiagnosticReport/1bDR-NeisseriaGonorrhoeae"
* entry[DiagnosticReport].resource = 1bDR-NeisseriaGonorrhoeae
* entry[Patient].fullUrl = "http://test.fhir.ch/r4/Patient/1Pat-DM"
* entry[Patient].resource = 1Pat-DM
* entry[Observation].fullUrl = "http://test.fhir.ch/r4/Observation/1bObs-NeisseriaGonorrhoeae"
* entry[Observation].resource = 1bObs-NeisseriaGonorrhoeae
* entry[Specimen][0].fullUrl = "http://test.fhir.ch/r4/Specimen/1bSpec-Specimen"
* entry[Specimen][=].resource = 1bSpec-Specimen
* entry[ServiceRequest][0].fullUrl = "http://test.fhir.ch/r4/ServiceRequest/1bSR-Order"
* entry[ServiceRequest][=].resource = 1bSR-Order

* entry[PractitionerRole][0].fullUrl = "http://test.fhir.ch/r4/PractitionerRole/1PR-KsAbc"
* entry[PractitionerRole][=].resource = 1PR-KsAbc

* entry[Practitioner][0].fullUrl = "http://test.fhir.ch/r4/Practitioner/1Pract-KsAbc"
* entry[Practitioner][=].resource = 1Pract-KsAbc

* entry[Organization][0].fullUrl = "http://test.fhir.ch/r4/Organization/1bOrg-Broker"
* entry[Organization][=].resource = 1bOrg-Broker
* entry[Organization][+].fullUrl = "http://test.fhir.ch/r4/Organization/1bOrg-Labor"
* entry[Organization][=].resource = 1bOrg-Labor
* entry[Organization][+].fullUrl = "http://test.fhir.ch/r4/Organization/1Org-KsAbc"
* entry[Organization][=].resource = 1Org-KsAbc

