Profile: ChElmPatient
Parent: ChLabPatient
Id: ch-elm-patient
Title: "CH ELM Patient"
Description: "This CH ELM base profile constrains the Patient resource for the purpose of laboratory orders and test reports."
* . ^short = "CH ELM Patient"

// * extension contains $patient-sexParameterForClinicalUse named sexParameterForClinicalUse 1..1
* gender 

// Mit der Anpassung der Epidemienverordnung und die Meldeverordnung wird neu die AHV-Nummer des Patienten Meldepflichtig, sofern elektronisch gemeldet wird und Massnahmen notwendig sind.
* identifier[AHVN13] 1..

* name 1..
* name ^short = "Whether the personal data is transmitted by using initials or full name can be seen from the table on p.66 of this document: 
https://www.bag.admin.ch/dam/bag/de/dokumente/mt/msys/leitfaden-zur-meldepflicht-2023.pdf.download.pdf/meldepflicht-leitfaden-2023-de.pdf"
* name.family 1..
* name.given 1..

* birthDate 1..
* birthDate obeys ch-elm-dateTime

* address 1..
* address.postalCode 1..
* address.city 1..
* address.state.extension contains ECH007CantonAbbreviation named cantonAbbreviation 0..1

// * address.state                              -> ISO-3166-2:CH, without prefixed country code
// * address.country.extension[countrycode]     -> ISO-3166-1 ALPHA2 or ALPHA3


