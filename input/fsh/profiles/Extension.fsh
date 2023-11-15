Extension: ChElmExtDepartment
Id: ch-elm-ext-department
Title: "CH ELM Extension: Department"
Description: "This CH ELM extension enables the representation of a department (name) of an organization directly in the resource Organization itself."
* ^context[+].type = #element
* ^context[=].expression = "Organization"
* . ^short = "CH ELM Extension: Department"
* value[x] 1..
* value[x] only string
* valueString ^short = "Name of the department"
* valueString ^maxLength = 100
