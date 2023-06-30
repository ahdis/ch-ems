// https://github.com/hl7ch/ch-core/issues/233

Extension: ECH007CantonAbbreviation
Id: ch-ext-ech-7-cantonabbreviation
Title: "eCH-0007 cantonAbbreviation – Kantonskürzel"
Description: "eCH-0007: Extension to define a canton abbreviation"
* ^url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-ech-7-cantonabbreviation"
* ^context.type = #element
* ^context.expression = "Address.state"
* valueCode 1..1
* valueCode only code
* valueCode from ECH007CantonAbbreviation (required)
* valueCode ^short = "Canton abbreviation"


CodeSystem: ECH007CantonAbbreviation
Id: ech-7-cantonabbreviation
Title: "eCH-0007 Canton Abbreviation"
Description: "eCH-0007 defines cantonAbbreviation (Kantonskürzel), see [here](https://www.ech.ch/de/ech/ech-0007/6.0)."
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^url = "http://fhir.ch/ig/ch-core/CodeSystem/ech-7-cantonabbreviation"
* #AG
* #AR
* #AI
* #BL
* #BS
* #BE
* #FR
* #GE
* #GL
* #GR
* #JU
* #LU
* #NE 
* #NW 
* #OW
* #SH
* #SZ 
* #SO 
* #SG 
* #TI 
* #TG 
* #UR
* #VD
* #VS
* #ZG
* #ZH



ValueSet: ECH007CantonAbbreviation
Id: ech-7-cantonabbreviation
Title: "eCH-0007 Canton Abbreviation"
Description: "eCH-0007 defines cantonAbbreviation (Kantonskürzel), see [here](https://www.ech.ch/de/ech/ech-0007/6.0)."
* ^experimental = false
* include codes from system ECH007CantonAbbreviation
