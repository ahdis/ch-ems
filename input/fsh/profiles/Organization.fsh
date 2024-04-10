Profile: ChElmOrganizationAuthor
Parent: $ch-core-organization
Id: ch-elm-organization-author
Title: "CH ELM Organization: Author"
Description: "This CH ELM base profile constrains the Organization resource for the author of the laboratory report."
* . ^short = "CH ELM Organization: Author"
* identifier ..1
* identifier[GLN] 1..
* identifier[ZSR] 0..0
* identifier[UIDB] 0..0
* identifier[BER] 0..0

Profile: ChElmOrganizationLab
Parent: $ch-core-organization
Id: ch-elm-organization-lab
Title: "CH ELM Organization: Lab"
Description: "This CH ELM base profile constrains the Organization resource for the reporting laboratory."
* . ^short = "CH ELM Organization: Lab"
* identifier ..1
* identifier[GLN] 1..
* identifier[ZSR] 0..0
* identifier[UIDB] 0..0
* identifier[BER] 0..0
* name 1..
* name ^maxLength = 100

Profile: BERIdentifierCheck
Parent: BERIdentifier
Id: ch-elm-ber-identifier
Title: "BER Identifier"
Description: "Identifier holding a number for BER (Business and Enterprise Register), BUR (Betriebs- und Unternehmensregister), REE (Registre des entreprises et des établissements), RIS (Registro delle imprese e degli stabilimenti)"
* value obeys ber-length and ber-modulus-11

Profile: UIDBIdentifierCheck
Parent: UIDBIdentifier
Id: ch-elm-uidb-identifier
Title: "UIDB Identifier"
Description: "Identifier holding a number for UIDB (Unique Identification Business), UID (Verwendung der Unternehmens-Identifikationsnummer), IDE (Utilisation du numéro d'identification des entreprises), IDI (Utilizzo del numero d'identificazione delle imprese)"
* value obeys uidb-length and uidb-modulus-11

Profile: ChElmOrganizationOrderer
Parent: $ch-core-organization
Id: ch-elm-organization-orderer
Title: "CH ELM Organization: Orderer"
Description: "This CH ELM base profile constrains the Organization resource for the orderer."
* . ^short = "CH ELM Organization: Orderer"
* extension contains ChElmExtDepartment named department 0..1 MS
* identifier MS
* identifier[UIDB] 0..1 MS
* identifier[UIDB] only UIDBIdentifierCheck
* identifier[BER] 0..1 MS
* identifier[BER] only BERIdentifierCheck
* name MS
* name ^maxLength = 100
* address ..1 MS
* address.line ..1 MS
* address.line.extension[streetName] MS
* address.line.extension[houseNumber] MS
* address.line.extension[postOfficeBoxNumber] MS
* address.postalCode MS
* address.city MS
