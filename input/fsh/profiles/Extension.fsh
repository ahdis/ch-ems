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

Extension: ChElmExtVctCode
Id: ch-elm-ext-vct-code
Title: "CH ELM Extension: VCT code"
Description: "This CH ELM extension enables to proivde the VCT Code."
* ^context[+].type = #element
* ^context[=].expression = "HumanName"
* . ^short = "CH ELM Extension: VCT Code"
* value[x] 1..
* value[x] only string
* valueString ^short = "Name of the VCT Code"
* valueString ^maxLength = 20

Extension: ChElmExtHivCode
Id: ch-elm-ext-hiv-code
Title: "CH ELM Extension: HIV code"
Description: "This CH ELM extension enables to proivde the HIV Code."
* ^context[+].type = #element
* ^context[=].expression = "HumanName"
* . ^short = "CH ELM Extension: HIV Code"
* value[x] 1..
* value[x] only string
* valueString ^short = "Name of the HIV code"
* valueString ^maxLength = 2

Extension: ChElmExtValueExpectingOrgansimBinding
Id: ch-elm-ext-organism-binding
Title: "CH ELM Extension: ValueSet Excpeting Organism"
Description: "This CH ELM extension enables to define the binding/optionality of the expecting organism ValueSets"
* ^context[+].type = #element
* ^context[=].expression = "ValueSet"
* extension contains
    optional 1..1 and
    binding 1..1
* extension[optional] only Extension
* extension[optional] ^short = "If the value set is optional"
* extension[optional].url only uri
* extension[optional].value[x] only boolean
* extension[binding] only Extension
* extension[binding] ^short = "It a code binding is required or extensible (other values are allowed)"
* extension[binding].url only uri
* extension[binding].value[x] only code
* extension[binding].valueCode from ChElmValueSetObservationExpectingOrganism (required)
* url only uri