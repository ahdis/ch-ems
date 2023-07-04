Profile: ChElmComposition
Parent: ChLabComposition
Id: ch-elm-composition
Title: "CH ELM Composition: Laboratory Report"
Description: "This CH ELM base profile constrains the Composition resource for the purpose of laboratory test reports."
* . ^short = "CH ELM Composition: Laboratory Report"

* subject 1..
* subject only Reference(ChElmPatient)

* author only Reference(ChElmPractitionerRoleReportingLab)

// * attester 1..
// * attester.party 1..
// * attester.party only Reference(ChElmPractitionerRoleReportingLab)

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
    lab-no-subsections 0..*

* section[lab-no-subsections].code from ChElmLabStudyTypes (extensible)
* section[lab-no-subsections].entry 1..
* section[lab-no-subsections].entry only Reference(ChElmObservationResultsLaboratory)
* section[lab-no-subsections].section ..0


