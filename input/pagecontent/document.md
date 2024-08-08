The CH ELM exchange format is defined as a [document](https://hl7.org/fhir/R4/documents.html) type that corresponds to a [Bundle](https://hl7.org/fhir/R4/bundle.html) as a FHIR resource. A Bundle has a list of entries. The first entry is the [Composition](https://hl7.org/fhir/R4/composition.html), in which all contained entries are then referenced.

The exchange format defines the FHIR document for reporting to the FOPH so that **one document per organism per patient** is submitted. 

{% include img.html img="laboratory-report.png" caption="Fig. 2: Laboratory Report" width="35%" %}

Each CH ELM document requires

- a Composition resource with the metadata for the document
- a DiagnosticReport resource indicating for which organism the report is

[Here](profiles.html#overview) you will find an overview of the resources and their references to each other for which profiles are defined to represent the CH ELM laboratory report.

### Examples and Profiles
The profile [CH ELM Document](StructureDefinition-ch-elm-document.html) is a **generic profile** for all types of laboratory reports.

Here are examples of laboratory reports for different organisms that have different requirements (see also use case ([DE](usecase-german.html)) or [guidance](guidance.html)):
* Neisseria Gonorrhoeae: [JSON](Bundle-1Doc-NeisseriaGonorrhoeae.json.html), [XML](Bundle-1Doc-NeisseriaGonorrhoeae.xml.html)
   * Neisseria gonorrhoeae - Broker Szenario: [JSON](Bundle-1bDoc-NeisseriaGonorrhoeae.json.html), [XML](Bundle-1bDoc-NeisseriaGonorrhoeae.xml.html)
* Chlamydia trachomatis: [JSON](Bundle-2Doc-ChlamydiaTrachomatis.json.html), [XML](Bundle-2Doc-ChlamydiaTrachomatis.xml.html)
   * Chlamydia trachomatis - with Patient VCT Code: [JSON](Bundle-2Doc-ChlamydiaTrachomatis-Vct.json.html), [XML](Bundle-2Doc-ChlamydiaTrachomatis-Vct.xml.html)
* Carbapenemase-producing Enterobacteriaceae (CPE): [JSON](Bundle-3Doc-CPE.json.html), [XML](Bundle-3Doc-CPE.xml.html)
* Campylobacter spp.: [JSON](Bundle-4Doc-Campylobacter.json.html), [XML](Bundle-4Doc-Campylobacter.xml.html)
* Treponema pallidum: [JSON](Bundle-5Doc-TreponemaPallidum.json.html), [XML](Bundle-5Doc-TreponemaPallidum.xml.html) 
* Influenza: [JSON](Bundle-6Doc-Influenza.json.html), [XML](Bundle-6Doc-Influenza.xml.html) 
* SARS-CoV-2: [JSON](Bundle-7Doc-SARSCoV2.json.html), [XML](Bundle-7Doc-SARSCoV2.xml.html) 
* Hepatite B: [JSON](Bundle-8Doc-HepatiteB.json.html), [XML](Bundle-8Doc-HepatiteB.xml.html) 
* Hepatite C: [JSON](Bundle-9Doc-HepatiteC.json.html), [XML](Bundle-9Doc-HepatiteC.xml.html) 
* Legionella: [JSON](Bundle-10Doc-Legionella.json.html), [XML](Bundle-10Doc-Legionella.xml.html) 
* Malaria: [JSON](Bundle-11Doc-Malaria.json.html), [XML](Bundle-11Doc-Malaria.xml.html) 
* Monkeypox: [JSON](Bundle-12Doc-Monkeypox.json.html), [XML](Bundle-12Doc-Monkeypox.xml.html) 
* Shigella: [JSON](Bundle-13Doc-Shigella.json.html), [XML](Bundle-13Doc-Shigella.xml.html) 
* Meningo by secondary lab: [JSON](Bundle-14Doc-Meningo-SecLab.json.html), [XML](Bundle-14Doc-Meningo-SecLa.xml.html) 
* Measles Seroconversion: [JSON](Bundle-15Doc-Measles-Seroconversion.json.html), [XML](Bundle-15Doc-Measles-Seroconversion.xml.html) 
* Dengue Titer: [JSON](Bundle-16Doc-Dengue-Titer.json.html), [XML](Bundle-16Doc-Dengue-Titer.xml.html)