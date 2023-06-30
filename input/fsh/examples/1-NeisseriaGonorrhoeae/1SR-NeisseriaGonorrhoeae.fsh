Instance: 1SR-Order1-Orderer
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #example
Title: "1SR - Order 1 - Orderer"
Description: "Example for a CH ELM ServiceRequest: Laboratory Order"
* identifier[placerOrderIdentifier].system = "http://fhir.orderer.ch/PLAC"
* identifier[placerOrderIdentifier].value = "U3F342"
* status = #completed
* intent = #order
* code = $loinc#21416-3 "Neisseria gonorrhoeae DNA [Presence] in Urine by NAA with probe detection"
* subject = Reference(1Pat-DM)
* specimen = Reference(1Spec-Specimen-Orderer)
* requester = Reference(1PR-CentreDeTestXa)




Instance: 1SR-Order2-PrimaryLab
InstanceOf: ChElmServiceRequestLaboratoryOrder
Usage: #example
Title: "1SR - Order 2 - Primary Lab"
Description: "Example for a CH ELM ServiceRequest: Laboratory Order"
* identifier[placerOrderIdentifier].system = "http://fhir.primary-lab.ch/PLAC"
* identifier[placerOrderIdentifier].value = "AD2313"
* basedOn = Reference(1SR-Order1-Orderer)
* status = #completed
* intent = #order
* code = $loinc#21416-3 "Neisseria gonorrhoeae DNA [Presence] in Urine by NAA with probe detection"
* subject = Reference(1Pat-DM)
* specimen = Reference(1Spec-Specimen-PrimaryLab)
* requester = Reference(1PR-SuperLabor)

