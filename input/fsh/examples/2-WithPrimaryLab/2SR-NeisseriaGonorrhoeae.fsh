Instance: 2SR-Order1
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #example
Title: "2SR - Order 1"
Description: "Example for a CH ELM ServiceRequest: Laboratory Order"
* identifier.system = "http://fhir.primary-lab.ch/order-identifier"
* identifier.value = "AD2313"
* status = #completed
* intent = #order
* code = $loinc#21416-3 "Neisseria gonorrhoeae DNA [Presence] in Urine by NAA with probe detection"
* subject = Reference(2Pat-DM)
* specimen = Reference(2Spec-Specimen-Orderer)
* requester = Reference(2PR-CentreDeTestXa)




Instance: 2SR-Order2
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #example
Title: "2SR - Order 2"
Description: "Example for a CH ELM ServiceRequest: Laboratory Order"
* identifier.system = "http://fhir.lab.ch/order-identifier"
* identifier.value = "U3F342"
* basedOn = Reference(2SR-Order1)
* status = #completed
* intent = #order
* code = $loinc#21416-3 "Neisseria gonorrhoeae DNA [Presence] in Urine by NAA with probe detection"
* subject = Reference(2Pat-DM)
* specimen = Reference(2Spec-Specimen-PrimaryLab)
* requester = Reference(2PR-SuperLabor)

