Instance: 1SR-Order1
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #example
Title: "1SR - Order 1"
Description: "Example for a CH ELM ServiceRequest: Laboratory Order"
* identifier.system = "http://fhir.lab.ch/order-identifier"
* identifier.value = "U3F342"
* status = #completed
* intent = #order
* code = $loinc#21416-3 "Neisseria gonorrhoeae DNA [Presence] in Urine by NAA with probe detection"
* subject = Reference(1Pat-DM)
* specimen = Reference(1Spec-Specimen-Orderer)
* requester = Reference(1PR-CentreDeTestXa)

