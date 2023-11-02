All significant changes to this FHIR implementation guide will be documented on this page.   

### 1.0.0-release

#### Added
* New examples: Carbapenemase-producing Enterobacteriaceae (CPE)
* In order to have the possibility to react quickly to any changes in the reporting needs, a two-stage validation strength has been introduced:
   * Profile [CH ELM Document: Laboratory Report (strict)](StructureDefinition-ch-elm-document-strict.html): The leading code element has a [required](https://hl7.org/fhir/R4/terminologies.html#required) binding to the ValueSet CH ELM Results Laboratory Observation
      * Usage: For all examples in this published version of the implementation guide
   * Profile [CH ELM Document: Laboratory Report](StructureDefinition-ch-elm-document.html): The leading code element has an [extensible](https://hl7.org/fhir/R4/terminologies.html#extensible) binding to the ValueSet CH ELM Results Laboratory Observation
      * Potential usage: A new leading code to be reported is introduced, which could not yet get updated in the implementation guide  

#### Changed / Updated
* [#15](https://github.com/ahdis/ch-elm/issues/15): API update for search capabilities
* [#14](https://github.com/ahdis/ch-elm/issues/14): Remove turtle definitions
* [#11](https://github.com/ahdis/ch-elm/issues/11): Change level of flag MustSupport for Patient.country (Patient.country MS, Patient.country.extension:countrycode 1..)
* Adjustment to the changed names of the parent profiles of CH LAB-Order 
* [#19](https://github.com/ahdis/ch-elm/issues/19): Require DiagnosticReport.identifier (equal to Composition.identifier)
* [#13](https://github.com/ahdis/ch-elm/issues/13): Update *Fig. 6: Resource Overview* with cardinalities
* [#21](https://github.com/ahdis/ch-elm/issues/21): Usage of the IDN instead of the OASI for Patient.identifier Liechtenstein.
* Add a computable way for the concept of leading code and in some cases necessary addition of additional codes to the leading code, see [Guidance - Laboratory Result](guidance.html#laboratory-result)
   * [#23](https://github.com/ahdis/ch-elm/issues/23): Include rules to check if the described mechanism is applied correctly
   * [#25](https://github.com/ahdis/ch-elm/issues/25): Renaming of the specimen-specific ValueSet 'CH ELM Lab Specimen Types: Chlamydia Trachomatis' to ValueSet 'CH ELM Results Geni Spec'
   * [#26](https://github.com/ahdis/ch-elm/issues/26)/[#8](https://github.com/ahdis/ch-elm/issues/8): Remove ValueSet 'CH ELM Lab Specimen Types'; now handled via the newly introduced mechanism
   * [#8](https://github.com/ahdis/ch-elm/issues/8): Change the fixed value for Specimen.type.text to a more general version: 'Material declared by LOINC system axis' -> 'Material declared by Observation.code or non-mandatory'

#### Fixed
* [#9](https://github.com/ahdis/ch-elm/issues/9): Set minimum cardinality of Patient.gender to 1 (according to the logical model)
