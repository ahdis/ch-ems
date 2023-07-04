Instance: 2Spec-Specimen-Orderer
InstanceOf: ChElmSpecimen
Usage: #example
Title: "2Spec - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Specimen: Laboratory."
* accessionIdentifier.system = "http://fhir.orderer.ch/specimen"
* accessionIdentifier.value = "specimen-id-orderer"
* type = $sct#122575003 "Urine specimen"    
* subject = Reference(2Pat-DM)
* collection.collectedDateTime = "2023-02-01"


Instance: 2Spec-Specimen-PrimaryLab
InstanceOf: ChElmSpecimen
Usage: #example
Title: "2Spec - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Specimen: Laboratory."
* accessionIdentifier.system = "http://fhir.primary-lab.ch/specimen"
* accessionIdentifier.value = "specimen-id-primarylab"
* type = $sct#122575003 "Urine specimen" 
* subject = Reference(2Pat-DM)
* collection.collectedDateTime = "2023-02-01"
