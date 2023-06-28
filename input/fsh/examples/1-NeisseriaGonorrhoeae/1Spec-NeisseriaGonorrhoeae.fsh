Instance: 1Spec-Specimen-Orderer
InstanceOf: ChElmSpecimen
Usage: #example
Title: "1Spec - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Specimen: Laboratory."
* accessionIdentifier.system = "http://fhir.orderer.ch/specimen"
* accessionIdentifier.value = "specimen-id-orderer"
* type = $sct#74964007 "Other" // Kind of material that forms the specimen -> required by EU LAB
* subject = Reference(1Pat-DM)
* collection.collectedDateTime = "2023-02-01"


Instance: 1Spec-Specimen-PrimaryLab
InstanceOf: ChElmSpecimen
Usage: #example
Title: "1Spec - Neisseria Gonorrhoeae"
Description: "Example for a CH ELM Specimen: Laboratory."
* accessionIdentifier.system = "http://fhir.primary-lab.ch/specimen"
* accessionIdentifier.value = "specimen-id-primarylab"
* type = $sct#74964007 "Other" // Kind of material that forms the specimen -> required by EU LAB
* subject = Reference(1Pat-DM)
* collection.collectedDateTime = "2023-02-01"
