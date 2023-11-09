Profile: ChElmCodeableConcept
Parent: CodeableConcept
Id: ch-elm-codeableconcept
Title: "CH ELM CodeableConcept"
Description: "This profile represents the constraint applied to the CodeableConcept data type by this IG to use the 'CH ELM CodeableConcept' data type profile."
* coding only ChElmCoding
* coding 1..1


Profile: ChElmCoding
Parent: Coding
Id: ch-elm-coding
Title: "CH ELM Coding"
Description: "This profile represents the constraints applied to the Coding data type by this IG used in the 'CH ELM Coding' data type profile."
* system 1..
* code 1..