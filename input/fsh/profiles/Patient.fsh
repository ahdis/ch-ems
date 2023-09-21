Profile: ChElmPatient
Parent: ChLabPatient
Id: ch-elm-patient
Title: "CH ELM Patient"
Description: "This CH ELM base profile constrains the Patient resource for the purpose of laboratory orders and test reports."
* . ^short = "CH ELM Patient"

* identifier MS

* identifier contains OASI-LI 0..* MS
* identifier[AHVN13] MS
* identifier[AHVN13] ^short = "OASI Number Switzerland"

* identifier[OASI-LI] only OasiLiIdentifier
* identifier[OASI-LI] ^short = "OASI Number Principality of Liechtenstein"
* identifier[OASI-LI] ^patternIdentifier.system = "http://ahv.li/identifier/oasi"

* name 1..
* name ^short = "Whether the personal data is transmitted by using initials, full name or a special combination can be seen from the table on p.66 of this document: 
https://www.bag.admin.ch/dam/bag/de/dokumente/mt/msys/leitfaden-zur-meldepflicht-2023.pdf.download.pdf/meldepflicht-leitfaden-2023-de.pdf"
* name.text ^short = "For usage in the case of HIV/AIDS see IG guidance"
* name.family 1..
* name.family ^short = "In the case of HIV/AIDS masked and provide a specific value (see IG guidance)"
* name.given 1..
* name.given ^short = "In the case of HIV/AIDS masked and provide a specific value (see IG guidance)"

* gender 1..

* birthDate 1..
* birthDate obeys ch-elm-dateTime

* address ^slicing.discriminator[0].type = #value
* address ^slicing.discriminator[=].path = "use"
* address ^slicing.rules = #open
* address contains home 1..1
* address[home] ^short = "Residential address"
* address[home].use 1..
* address[home].use = #home
* address[home].postalCode MS
* address[home].city MS
* address[home].state MS
* address[home].country MS
* address[home].country.extension[countrycode] 1..

* telecom[phone].value ^example.label = "CH ELM"
* telecom[phone].value ^example.valueString = "+41 79 999 55 66"