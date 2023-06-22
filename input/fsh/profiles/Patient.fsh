Profile: ChElmPatient
Parent: ChLabPatient
Id: ch-elm-patient
Title: "CH ELM Patient"
Description: "This CH ELM base profile constrains the Patient resource for the purpose of laboratory test reports."
* . ^short = "CH ELM Patient"

* name 1..
* name.family 1..
* name.given 1..

* birthDate 1..

* address 1..
* address.postalCode 1..
* address.city 1..

// * address.state                              -> ISO-3166-2:CH, without prefixed country code
// * address.country.extension[countrycode]     -> ISO-3166-1 ALPHA2 or ALPHA3


