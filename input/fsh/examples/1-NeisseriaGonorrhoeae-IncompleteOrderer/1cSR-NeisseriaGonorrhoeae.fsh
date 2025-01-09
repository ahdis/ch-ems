Instance: 1cSR-Order
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #example
Title: "1cSR - Order"
Description: "Example for a CH ELM ServiceRequest: Laboratory Order"
* identifier.value = "22000938108"
* status = #completed
* intent = #order
* code = $loinc#697-3 "Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture"
* subject = Reference(Pat-001)
* specimen = Reference(1Spec-Specimen)
* requester = Reference(1cPR-KsAbc)
