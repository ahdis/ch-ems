ValueSet: ResultsCodedValuesLaboratoryChElm
Id: results-coded-values-laboratory-ch-elm
Title: "Results Coded Values Laboratory - CH ELM"
Description: "This value set includes the codes for the laboratory test results."
* ^status = #draft
* ^experimental = false

* $sct#10828004	"Positive (qualifier value)"
* $sct#260385009 "Negative (qualifier value)"
* $sct#442779003 "Borderline low (qualifier value)"
* $sct#442777001 "Borderline high (qualifier value)"
* $sct#371932001 "Borderline normal (qualifier value)"
* $sct#373068000 "Undetermined (qualifier value)"




Instance: eLMTestResultCode-to-ChElm
InstanceOf: ConceptMap
Usage: #definition
* experimental = false
* name = "ResultsCodedValuesLaboratoryChElmMapping"
* title = "Results Coded Values Laboratory - CH ELM Mapping"
* status = #draft
* description = "Mapping of the coded values from the former FOPH eLM CSV format to the new FHIR format."

* targetCanonical = "http://fhir.ch/ig/ch-elm/ValueSet/results-coded-values-laboratory-ch-elm"

* group[0].target = "http://snomed.info/sct"

* group[=].element[0].code = #1
* group[=].element[=].display = "positive"
* group[=].element[=].target[0].code = #10828004
* group[=].element[=].target[=].display = "Positive (qualifier value)"
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #2
* group[=].element[=].display = "negative"
* group[=].element[=].target[0].code = #260385009
* group[=].element[=].target[=].display = "Negative (qualifier value)"
* group[=].element[=].target[=].equivalence = #equal

* group[=].element[+].code = #5
* group[=].element[=].display = "borderline"
* group[=].element[=].target[0].code = #442779003
* group[=].element[=].target[=].display = "Borderline low (qualifier value)"
* group[=].element[=].target[=].equivalence = #specializes	
* group[=].element[=].target[+].code = #442777001
* group[=].element[=].target[=].display = "Borderline high (qualifier value)"
* group[=].element[=].target[=].equivalence = #specializes
* group[=].element[=].target[+].code = #371932001
* group[=].element[=].target[=].display = "Borderline normal (qualifier value)"
* group[=].element[=].target[=].equivalence = #specializes

* group[=].element[+].code = #8
* group[=].element[=].display = "undetermined"
* group[=].element[=].target[0].code = #373068000
* group[=].element[=].target[=].display = "Undetermined (qualifier value)"
* group[=].element[=].target[=].equivalence = #equal
