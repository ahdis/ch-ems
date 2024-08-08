Instance: 1bSR-Order
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #example
Title: "1bSR - Order"
Description: "Example for a CH ELM ServiceRequest: Laboratory Order"
* identifier.value = "22000938108"
* status = #completed
* intent = #order
* code = $loinc#697-3 "Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture"
* subject = Reference(Pat-001)
* specimen = Reference(1bSpec-Specimen)
* requester = Reference(1PR-KsAbc)