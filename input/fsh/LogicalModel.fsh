Logical: ChElmLaboratoryReport
Parent: Element
Id: ch-elm-laboratory-report
Title: "CH ELM Laboratory Report Logical Model"
Description: "Logical model of the CH ELM Laboratory Report"

* ^type = "LaboratoryReport"
* . ^definition = "Laboratory Report"
* Patient 1..1 BackboneElement "Patient"
* Patient.Name 1..1 string "Name"
* Patient.Vorname 1..* string "Vorname"

