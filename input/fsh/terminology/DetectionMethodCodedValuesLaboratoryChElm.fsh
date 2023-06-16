ValueSet: DetectionMethodCodedValuesLaboratoryChElm
Id: detection-method-coded-values-laboratory-ch-elm
Title: "Detection Method Coded Values Laboratory - CH ELM"
Description: "This value set includes the codes for the laboratory test detection method."
* ^status = #draft
* ^experimental = false

* include codes from system $sct where concept is-a #15220000 "Laboratory test (procedure)"




Instance: eLMTestDetectionCode-to-ChElm
InstanceOf: ConceptMap
Usage: #definition
* experimental = false
* name = "DetectionMethodCodedValuesLaboratoryChElmMapping"
* title = "Detection Method Coded Values Laboratory - CH ELM Mapping"
* status = #draft
* description = "Mapping of the coded values from the former FOPH eLM CSV format to the new FHIR format."

* targetCanonical = "http://fhir.ch/ig/ch-elm/ValueSet/detection-method-coded-values-laboratory-ch-elm"

* group[0].target = "http://snomed.info/sct"

* group[=].element[0].code = #1
* group[=].element[=].display = "PCR"
* group[=].element[=].target[0].code = #9718006
* group[=].element[=].target[=].display = "Polymerase chain reaction analysis (procedure)"
* group[=].element[=].target[=].equivalence = #equal
