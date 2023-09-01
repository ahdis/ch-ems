Profile: ChElmComposition
Parent: ChLabComposition
Id: ch-elm-composition
Title: "CH ELM Composition: Laboratory Report"
Description: "This CH ELM base profile constrains the Composition resource for the purpose of laboratory test reports."
* . ^short = "CH ELM Composition: Laboratory Report"
* identifier ^short = "Persistent, unique identifier for the document (UUID)"
* identifier 1..
* identifier.system 1..
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value 1..
* identifier.value obeys ch-elm-doc-identifier
* identifier.value ^example.label = "CH ELM"
* identifier.value ^example.valueString = "urn:uuid:d494503a-7bef-4551-853c-f3dced2c518f"
* status = #final
* subject 1..
* subject only Reference(ChElmPatient)
* author only Reference(ChElmOrganizationAuthor)
* section 1..
* section ^slicing.discriminator[0].type = #exists
* section ^slicing.discriminator[=].path = "$this.section"
* section ^slicing.discriminator[+].type = #type
* section ^slicing.discriminator[=].path = "$this.entry.resolve()"
* section ^slicing.discriminator[+].type = #pattern
* section ^slicing.discriminator[=].path = "$this.code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section.title 1..
* section.code 1..
* section.code only ChElmCodeableConcept

* section contains
    lab-no-subsections 1..1
* section[lab-no-subsections].code from ChElmLabStudyTypes (required)
* section[lab-no-subsections].entry 1..
* section[lab-no-subsections].entry only Reference(ChElmObservationResultsLaboratory)
* section[lab-no-subsections].section ..0


