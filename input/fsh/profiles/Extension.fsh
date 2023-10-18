Extension: ChElmExtDepartment
Id: ch-elm-ext-department
Title: "CH ELM Extension: Department"
Description: "This CH ELM extension enables the representation of a department (name) of an organization directly in the resource Organization itself."
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* . ^short = "CH ELM Extension: Department"
* value[x] 1..
* value[x] only string
* valueString. ^short = "Name of the department"


Extension: ChElmExtExpectedMaterialsGroup
Id: ch-elm-ext-expected-materials-group
Title: "CH ELM Extension: Expected Materials Group"
Description: "This CH ELM extension is added in the value set CH ELM Results Laboratory Observation (Observation.code) to those leading LOINC codes that need to be complemented by a SNOMED CT code for the expected material (Specimen.type)."
* ^context[+].type = #element
* ^context[=].expression = "ValueSet.compose.include.concept"
* . ^short = "CH ELM Extension: Expected Materials Group"
* value[x] 1..
* value[x] only url
* valueUrl. ^short = "Value set with the completing SNOMED CT codes included"
