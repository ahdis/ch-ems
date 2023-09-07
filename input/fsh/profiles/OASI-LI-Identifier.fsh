// https://www.ahv.li/beitraege/ahv-nummerversicherten-nr

Profile: OasiLiIdentifier
Parent: Identifier
Id: ch-elm-oasi-li-identifier
Title: "OASI LI Identifier"
Description: "Identifier holding the OASI number of the Principality of Liechtenstein. It is a number between 4 and 12 digits, without check digit and without special characters."

* system 1..
* system = "http://ahv.li/identifier/oasi" (exactly)
* value 1..
* value obeys oasi-li-length


Invariant: oasi-li-length
Description: "OASI number must be between 4 and 12 digits long"
Severity: #error
Expression: "value.matches('^[0-9]{4,12}$')"