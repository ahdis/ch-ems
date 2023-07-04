Instance: 1Spec-Specimen-Orderer
InstanceOf: ChElmSpecimen
Usage: #example
Title: "1Spec - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Specimen: Laboratory."
* accessionIdentifier.system = "http://fhir.orderer.ch/specimen"
* accessionIdentifier.value = "specimen-id-orderer"
* type = $sct#122575003 "Urine specimen"    
* subject = Reference(1Pat-DM)
* collection.collectedDateTime = "2023-02-01"

