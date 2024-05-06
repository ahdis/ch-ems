ValueSet: ChElmValueSetObservationExpectingOrganism
Id: ch-elm-valueset-observation-expecting-organism
Title: "CH ELM ValueSet Organism Expecting Organism"
Description: "This CH ELM value set includes the codes for the ValueSet Organism if the ValueSet is considered 
- required: an organism code must come from the valueset
- extensible: an organism code should come from the valueset, but if the valueset does not contain the concpet, the organism code can be added"

* ^status = #active
* ^experimental = false

* $binding-strength#required "required"
* $binding-strength#extensible "extensible"
