This exchange format is defined as a [document](https://hl7.org/fhir/R4/documents.html) type that corresponds to a [Bundle](https://hl7.org/fhir/R4/bundle.html) as a FHIR resource. A Bundle has a list of entries. The first entry is the [Composition](https://hl7.org/fhir/R4/composition.html), in which all contained entries are then referenced.

{% include img.html img="laboratory-report.png" caption="Fig.: Laboratory Report" width="40%" %}

Each ELM document requires

- a Composition resource with the metadata for the document
- a DiagnosticReport resource indicating for which organism the report is

These figures illustrate the resources, and their references to each other, for which profiles are defined to represent the CH ELM laboratory report.

{% include img.html img="profiles.png" caption="Fig.: Resource Overview" width="80%" %}

### Examples and Profiles

#### Neisseria Gonorrhoeae
* Example Laboratory Report: [JSON](Bundle-1Doc-NeisseriaGonorrhoeae.json.html), [XML](Bundle-1Doc-NeisseriaGonorrhoeae.xml.html)
* Profiles:
   * [CH ELM Document: Neisseria Gonorrhoeae](StructureDefinition-ch-elm-document-neisseria-gonorrhoeae.html)
   * [CH ELM DiagnosticReport: Neisseria Gonorrhoeae](StructureDefinition-ch-elm-diagnosticreport-neisseria-gonorrhoeae.html)
   * [CH ELM Observation Results: Neisseria Gonorrhoeae](StructureDefinition-ch-elm-observation-results-neisseria-gonorrhoeae.html)
