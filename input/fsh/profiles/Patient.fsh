Profile: ChElmPatient
Parent: ChLabPatient
Id: ch-elm-patient
Title: "CH ELM Patient"
Description: "This CH ELM base profile constrains the Patient resource for the purpose of laboratory orders and test reports."
* . ^short = "CH ELM Patient"

* identifier ..2 MS

* identifier contains IDN 0..1 MS
* identifier[AHVN13] ..1 MS
* identifier[AHVN13] ^short = "OASI Number Switzerland"

* identifier[IDN] only IdnIdentifier
* identifier[IDN] ^short = "IDN Liechtenstein"
* identifier[IDN] ^patternIdentifier.system = "urn:oid:2.16.438.10.20.10.10.1.2.1"

* identifier[EPR-SPID] 0..0
* identifier[LocalPid] 0..0
* identifier[insuranceCardNumber] 0..0

* name 1..1
* name ^short = "Whether the personal data is transmitted by using initials, full name or a special combination can be seen from the table on p.66 of this document: 
https://www.bag.admin.ch/dam/bag/de/dokumente/mt/msys/leitfaden-zur-meldepflicht-2023.pdf.download.pdf/meldepflicht-leitfaden-2023-de.pdf"
* name.text ^short = "For usage in the case of HIV/AIDS see IG guidance"
* name.text ^maxLength = 2
* name.family 1..
* name.family ^short = "In the case of HIV/AIDS masked and provide a specific value (see IG guidance)"
* name.family ^maxLength = 100
* name.given 1..1
* name.given ^short = "In the case of HIV/AIDS masked and provide a specific value (see IG guidance)"
* name.given ^maxLength = 100

* gender 1..

* birthDate 1..
* birthDate obeys ch-elm-dateTime

* address ..1 MS
* address ^slicing.discriminator[0].type = #value
* address ^slicing.discriminator[=].path = "use"
* address ^slicing.rules = #open
* address contains home ..1 MS
* address[home] ^short = "Residential address"
* address[home].use 1..
* address[home].use = #home
* address[home].line ..1
* address[home].line.extension[streetName] 1..
* address[home].line.extension[streetName].valueString ^maxLength = 100
* address[home].line.extension[houseNumber] MS
* address[home].line.extension[houseNumber].valueString ^maxLength = 10
* address[home].postalCode MS
* address[home].postalCode ^maxLength = 10
* address[home].city MS
* address[home].city ^maxLength = 50
* address[home].state MS // kein Binding notwendig: constraint ch-addr-2 = For a Swiss address, a canton abbreviation from the value set 'eCH-0007 Canton Abbreviation' must be used.
* address[home].country MS
* address[home].country.extension[countrycode] 1.. // kein Binding notwendig: constraint ch-addr-1 = ISO Country Alpha-2 or ISO Country Alpha-3 code

* telecom[phone] ..1
* telecom[phone].value ^example.label = "CH ELM"
* telecom[phone].value ^example.valueString = "+41 79 999 55 66"
* telecom[phone].value ^maxLength = 25
