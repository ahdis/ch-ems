The CH ELM exchange format is defined as a [document](https://hl7.org/fhir/R4/documents.html) type that corresponds to a [Bundle](https://hl7.org/fhir/R4/bundle.html) as a FHIR resource. A Bundle has a list of entries. The first entry is the [Composition](https://hl7.org/fhir/R4/composition.html), in which all contained entries are then referenced.

The exchange format defines the FHIR document for reporting to the FOPH so that **one document per pathogen** is submitted. 

{% include img.html img="laboratory-report.png" caption="Fig. 2: Laboratory Report" width="35%" %}

Each CH ELM document requires

- a Composition resource with the metadata for the document
- a DiagnosticReport resource indicating for which pathogen the report is

[Here](profiles.html#resource-overview) you will find an overview of the resources and their references to each other for which profiles are defined to represent the CH ELM laboratory report.

### Examples and Profiles
The profile [CH ELM Document](StructureDefinition-ch-elm-document.html) is a **generic profile** for all types of laboratory reports.

Here are examples of laboratory reports for different pathogens that have different requirements (see also use case ([DE](usecase-german.html)) or [guidance](guidance.html)):
* Neisseria Gonorrhoeae [JSON](Bundle-1Doc-NeisseriaGonorrhoeae.json.html), [XML](Bundle-1Doc-NeisseriaGonorrhoeae.xml.html)

