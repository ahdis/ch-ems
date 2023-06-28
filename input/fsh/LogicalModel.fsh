Logical: ChElmLaboratoryReport
Parent: Element
Id: LaboratoryReport
Title: "CH ELM Laboratory Report"
Description: "The logical model represents the laboratory report as an abstract data model. The model shows the used data set and specifies the data types and the cardinalities of the data elements."
* . ^short = "Laborbericht basierend auf der 'Meldeverordnung 818.101.126'"
* . ^definition = "Laboratory Report"

// Name | Card. | Type | Description 

* ReportingLab 1..1 Element "Art. 4 Abs. 2 (Meldepflichtiges Laboratorium)" 
* ReportingLab.LabCodeFOPH 1..1 integer "xxx" 
* ReportingLab.LabGLN 1..1 string "TODO" 
* ReportingLab.LabName 1..1	string "Art. 4 Abs. 2 Bst. a (Bezeichnung des Laboratoriums)" 
* ReportingLab.LabDepartment 0..1	string "TODO" 
* ReportingLab.LabPhysician 1..1 Element "xxx"
* ReportingLab.LabPhysician.LabPhysicianGLN 1..* string "TODO"
* ReportingLab.LabPhysician.LabPhysicianSurname 1..1 string "Art. 4 Abs. 2 Bst. b (Name der verantwortlichen Laborleiterin oder des verantwortlichen Laborleiters)"
* ReportingLab.LabPhysician.LabPhysicianGivenname 1..* string "Art. 4 Abs. 2 Bst. b (Vorame der verantwortlichen Laborleiterin oder des verantwortlichen Laborleiters)"
* ReportingLab.LabAddress 1..* Element "TODO" 
* ReportingLab.LabAddress.LabStreetAddressLine	0..1 string "TODO"
* ReportingLab.LabAddress.LabPostBox 0..1 string "TODO" 
* ReportingLab.LabAddress.LabZipCode 1..1 integer "TODO"
* ReportingLab.LabAddress.LabCity 1..1	string "TODO"
* ReportingLab.LabPhone 1..1 string "TODO"
* ReportingLab.LabEmail 1..1 string "TODO"
* ReportingLab.LabOrderId	1..1 string "TODO" 

/*
OrdererOrgName
OrdererDivision
OrdererPhysicianSurname
OrdererPhysicianGivenname
OrdererStreetAddressLine
OrdererPostBox
OrdererZipCode
OrdererCity

PrimaryLabName
PrimaryLabStreetAddressLine
PrimaryLabPostBox
PrimaryLabZipCode
PrimaryLabCity
PrimaryLabOrderId

* Patient 1..1 Element "TBD: Element aus der Meldeverordnung" "Patient"
PatientSurname
PatientGivenname
PatientSexCode
PatientDayOfBirth
PatientMonthOfBirth
PatientYearOfBirth
PatientPhoneNumber
PatientEmail
PatientStreetAddressLine
PatientZipCode
PatientCity
PatientCantonCode
PatientCountryCode

TestDayOfExecution
TestMonthOfExecution
TestYearOfExecution
TestResultCode
TestDetectionCode
TestDetectionOther

TestDayOfCollection
TestMonthOfCollection
TestYearOfCollection
TestCollectionMaterialCode
TestCollectionMaterialOther

TestOrganismCode
TestOrganismOther

	*/




Mapping: fhir
Id: fhir
Title: "CH ELM Laboratory Report Model to FHIR"
Source: ChElmLaboratoryReport
Target: "hl7.org/fhir/r4"
* -> "Bundle.conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document')"

* ReportingLab -> "PractitionerRole.conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-practitionerrole-reporting-lab')"
* ReportingLab.LabCodeFOPH -> "Organization.identifier:FOPH"
* ReportingLab.LabGLN -> "Organization.identifier:GLN"
* ReportingLab.LabName -> "Organization.name"
* ReportingLab.LabDepartment -> "Organization.extension:department"
* ReportingLab.LabPhysician -> "Practitioner.conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-practitioner')"
* ReportingLab.LabPhysician.LabPhysicianGLN -> "Practitioner.identifier:GLN"
* ReportingLab.LabPhysician.LabPhysicianSurname -> "Practitioner.name.family"
* ReportingLab.LabPhysician.LabPhysicianGivenname -> "Practitioner.name.given"
* ReportingLab.LabAddress -> "Organization.address"
* ReportingLab.LabAddress.LabStreetAddressLine -> "Organization.address.line"
* ReportingLab.LabAddress.LabPostBox -> "Organization.address.line"
* ReportingLab.LabAddress.LabZipCode -> "Organization.address.postalCode"
* ReportingLab.LabAddress.LabCity -> "Organization.address.city"
* ReportingLab.LabPhone -> "Organization.telecom:phone.value"
* ReportingLab.LabEmail -> "Organization.telecom:email.value"
* ReportingLab.LabOrderId -> "ServiceRequest.identifier:placerOrderIdentifier"


//* specimen 1..* http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-specimen "TBD: Element aus der Meldeverordnung"

/*
Mapping: fhir
Id: fhir
Title: "eHN Lab model to FHIR R4 Map"
Source: ChElmLaboratoryReport
Target: "hl7.org/fhir/r4"
* -> "Bundle.conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document')"

* specimen -> "Observation.conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-observation-results-laboratory').specimen.resolve()"
* specimen -> "DiagnosticReport.conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-diagnosticreport').specimen.resolve()"
*/


/*
Logical: LabReport
Id: LabReport
Title: "Laboratory Report"
Description: "Laboratory Report"
* ^version = "0.1.0"
* ^status = #draft
* ^publisher = "HL7 Europe"
* ^contact.name = "HL7 Europe"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.eu"
* ^jurisdiction.coding.system = "http://unstats.un.org/unsd/methods/m49/m49.htm"
* ^jurisdiction.coding.code = #150
* ^jurisdiction.coding.display = "Europe"
* . ^short = "Laboratory Report"
* . ^definition = "Laboratory Report"

* header 1..1 BackboneElement "A.1 Report header data elements" "A.1 Report header data elements"
* header.subject 1..1 http://hl7.eu/fhir/laboratory/StructureDefinition/Subject "A.1.1 - A1.2 Patient/subject" "A.1.1 Identification of the patient/subject and A.1.2 Patient/subject related contact information  "
* header.payer 0..1 http://hl7.eu/fhir/laboratory/StructureDefinition/Payer "A.1.3 Health insurance and payment information" "A.1.3 Health insurance and payment information"
* header.informationRecipient 0..1 http://hl7.eu/fhir/laboratory/StructureDefinition/Recipient "A.1.4 Information recipient" "A.1.4 Information recipient (intended recipient or recipients of the report, additional recipients might be identified by the ordering party, e.g. GP, other specialist), if applicable"
* header.author 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/Author "A.1.5 Author" "A.1.5 Author (by whom the Laboratory result report or a subset of its results was authored)"
* header.legalAuthenticator 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/LegalAuthenticator "A.1.6 Legal authenticator" "A.1.6 Legal authenticator (The person taking responsibility for the medical content of the document)"
* header.validator 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/Validator "A.1.7 Result validator" "A.1.7 Result validator"
* header.metadata 1..1 BackboneElement "A.1.8 Laboratory report metadata" "A.1.8 Laboratory report metadata"
* header.metadata.type 1..1 CodeableConcept "A.1.8.1 Document type" "A coded type of the document. Fixed value \"\"Laboratory report\"\" - Preferred system(s): LOINC"
* header.metadata.status 1..1 CodeableConcept "A.1.8.2 Document status" "The status of the laboratory test result report. E.g., preliminary, final. - Preferred system(s): hl7:DiagnosticReportStatus"
* header.metadata.dateTime 1..1 dateTime "A.1.8.3 Report date and time" "Date and time of the result report creation. - Preferred system(s): ISO 8601"
* header.metadata.title 0..1 string "A.1.8.4 Document title" "Document title, e.g. \"\"Laboratory Result report\"\" - Preferred system(s): "
* header.metadata.custodian 0..1 BackboneElement "A.1.8.5 Report custodian" "Organisation that is in charge of maintaining the laboratory report - Preferred system(s): "
* order 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/Order "A.2-A.3 Order" "A.2 Order information (Laboratory Result Report could respond to multiple test orders)\nA.3 Order reason (Laboratory Result Report could respond to multiple reasons)"
* specimen 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/SpecimenLab "A.4 Specimen information" "A.4 Specimen information"
* result 0..* http://hl7.eu/fhir/laboratory/StructureDefinition/Result "A.5 Results data elements" "A.5 Results data elements"

Mapping: fhir
Id: fhir
Title: "eHN Lab model to FHIR R4 Map"
Source: ChElmLaboratoryReport
Target: "hl7.org/fhir/r4"
* -> "Bundle.conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/Bundle-eu-lab')"
* header -> "Composition.conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/Composition-eu-lab')"
* header.subject -> "Composition.subject"
* header.payer -> "ServiceRequest.conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/ServiceRequest-eu-lab').insurance.resolve()"
* header.informationRecipient -> ".extension('http://hl7.org/fhir/StructureDefinition/cqf-receivingOrganization') [TBD}"
* header.author -> "Composition.author"
* header.legalAuthenticator -> "Composition.attester.where(mode=http://hl7.org/fhir/composition-attestation-mode#legal)"
* header.validator -> "Composition.attester.where(mode=http://hl7.org/fhir/composition-attestation-mode#professional)"
* header.metadata -> "Composition"
* header.metadata.type -> "Composition.type"
* header.metadata.status -> "Composition.status"
* header.metadata.dateTime -> "Bundle.timestamp"
* header.metadata.title -> "Composition.title"
* header.metadata.custodian -> "Composition.custodian"
* order -> "Composition.extension('http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition').valueReference.resolve()"
* order -> "Composition.extension('http://hl7.eu/fhir/laboratory/StructureDefinition/composition-basedOn-order-or-requisition').valueIdentifier"
* order -> "DiagnosticReport.conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab').basedOn.extension('http://hl7.eu/fhir/laboratory/StructureDefinition/diagnostic-report-basedOn-requisition').valueIdentifier"
* order -> "DiagnosticReport.conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab').basedOn.resolve()"
* specimen -> "Observation.conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/Observation-results-laboratory-eu-lab').specimen.resolve()"
* specimen -> "DiagnosticReport.conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab').specimen.resolve()"
* result -> "Composition.section:no-subsections.entry.resolve()"
* result -> "Composition.section:subsections.section.entry.resolve()"
* result -> "DiagnosticReport.conformsTo('http://hl7.eu/fhir/laboratory/StructureDefinition/DiagnosticReport-eu-lab').result.resolve()"
*/