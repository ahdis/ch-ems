Profile: ChElmPatient
Parent: ChLabPatient
Id: ch-elm-patient
Title: "CH ELM Patient"
Description: "This CH ELM base profile constrains the Patient resource for the purpose of laboratory orders and test reports."
* . ^short = "CH ELM Patient"

// * extension contains $patient-sexParameterForClinicalUse named sexParameterForClinicalUse 1..1
* gender 

// Mit der Anpassung der Epidemienverordnung und die Meldeverordnung wird neu die AHV-Nummer des Patienten Meldepflichtig, sofern elektronisch gemeldet wird und Massnahmen notwendig sind.
* identifier[AHVN13] // 1..  AHV-Nummer ist pflicht, jedoch ist anzunehmen, dass die Nummer dem Labor nicht immer bekannt ist.

* name 1..
* name ^short = "Whether the personal data is transmitted by using initials or full name can be seen from the table on p.66 of this document: 
https://www.bag.admin.ch/dam/bag/de/dokumente/mt/msys/leitfaden-zur-meldepflicht-2023.pdf.download.pdf/meldepflicht-leitfaden-2023-de.pdf"
* name.family 1..
* name.given 1..

* birthDate 1..
* birthDate obeys ch-elm-dateTime

* address ^slicing.discriminator[0].type = #value
* address ^slicing.discriminator[=].path = "use"
* address ^slicing.rules = #open
* address contains home 1..1
* address[home] ^short = "Residential address"
* address[home].use 1..
* address[home].use = #home
* address[home].postalCode 1..
* address[home].city 1..
* address[home].state // TODO: rule for FL ValueSet (based on CH Core)
* address[home].country 1..


// * address.state                              -> ISO-3166-2:CH, without prefixed country code
// * address.country.extension[countrycode]     -> ISO-3166-1 ALPHA2 or ALPHA3

// * Patient.PatientPhoneNumber 0..1 string "Patient phone number (only allowed for SARS-CoV-2 and Mpox-Virus)"
// * Patient.PatientEmail 0..1 string "Patient e-mail address (only allowed for SARS-CoV-2 and Mpox-Virus)"
