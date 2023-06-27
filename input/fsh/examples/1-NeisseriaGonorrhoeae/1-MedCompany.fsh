Instance: 1PR-MedCompany
InstanceOf: ChElmPractitionerRoleReportingLab
Usage: #example
Title: "1PR - Martina Reporter @ MedCompany"
Description: "Example for a CH ELM PractitionerRole: Reporting Lab."
* practitioner = Reference(1Pract-MedCompany)
* organization = Reference(1Org-MedCompany)


Instance: 1Pract-MedCompany
InstanceOf: ChElmPractitionerReportingLab
Usage: #example
Title: "1Pract - Martina Reporter"
Description: "Example for a CH ELM Practitioner: Reporting Lab."
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000201041"
* name.family = "Reporter"
* name.given = "Martina"
* telecom[email].system = #email
* telecom[email].value = "martina.reporter@medcompany.ch"
* telecom[phone].system = #phone
* telecom[phone].value = "044 444 44 44"



Instance: 1Org-MedCompany
InstanceOf: ChElmOrganizationReportingLab
Usage: #example
Title: "1Org - MedCompany"
Description: "Example for a CH ELM Organization: Reporting Lab."
* extension[department].valueString = "Abt. 2"
* name = "MedCompany"
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601002331470"
* identifier[FOPH].system = "http://fhir.ch/ig/ch-elm/NamingSystem/LabCodeFOPH"
* identifier[FOPH].value = "54322"
* address[0].line = "Poststr. 4"
* address[=].postalCode = "8006"
* address[=].city = "Zürich"
* telecom[email].system = #email
* telecom[email].value = "info@medcompany.ch"
* telecom[phone].system = #phone
* telecom[phone].value = "044 444 44 00"





/* Composition.author[0]
Instance: Inline-Instance-for-IT-CDA2FHIR-17e2cad1-c3e3-4901-adb1-c35a0b82b883-4
InstanceOf: PractitionerRole
Usage: #inline
* id = "88868d3e-7ab1-4ee5-983e-b979c4971f5c"
* practitioner = Reference(urn:uuid:ab279a0b-320f-483b-9a5d-f1f7e8ceacb2)

Instance: ab279a0b-320f-483b-9a5d-f1f7e8ceacb2
InstanceOf: Practitioner
Usage: #inline
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2"
* identifier.value = "MTCORV58E63L294G"
* identifier.assigner.display = "MEF"
* name.family = "Cervone"
* name.given = "Matteo"
* name.prefix = "Dr"
* telecom[0].system = #email
* telecom[=].value = "matteo.cervone@gmail.it"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "matteo.cervone@pec.it"
* telecom[=].use = #work
* telecom[+].system = #phone
* telecom[=].value = "3478129873"
* telecom[=].use = #mobile
* address.line = "Via Milano 7"
* address.line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-censusTract"
* address.line.extension.valueString = "058091"
* address.city = "Roma"
* address.district = "RM"
* address.state = "120"
* address.postalCode = "00184"
* address.country = "100"
*/



/* Composition.author[1]
Instance: Inline-Instance-for-IT-CDA2FHIR-17e2cad1-c3e3-4901-adb1-c35a0b82b883-5
InstanceOf: PractitionerRole
Usage: #inline
* id = "84b2e517-abc2-4268-975d-b12fa8174d30"
* practitioner = Reference(urn:uuid:68740937-f732-4ff9-a2e4-bf502d2d125f)

Instance: Inline-Instance-for-IT-CDA2FHIR-17e2cad1-c3e3-4901-adb1-c35a0b82b883-6
InstanceOf: Practitioner
Usage: #inline
* id = "68740937-f732-4ff9-a2e4-bf502d2d125f"
* identifier.system = "urn:oid:2.16.840.1.113883.2.9.4.3.2"
* identifier.value = "FPSSBN85G54D398H"
* identifier.assigner.display = "MEF"
* name.family = "Mancusi"
* name.given = "Filippo"
*/