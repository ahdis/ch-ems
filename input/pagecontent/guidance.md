The website of the Federal Office of Public Health (FOPH) ([EN](https://www.bag.admin.ch/bag/en/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html), [DE](https://www.bag.admin.ch/bag/de/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html), [FR](https://www.bag.admin.ch/bag/fr/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html), [IT](https://www.bag.admin.ch/bag/it/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html)) provides further documentation on infectious diseases requiring notification. The most important points for the implementation of this FHIR exchange format are included here.

*Please visit the FOPH website to access the most recent documents in the desired language (EN, DE, FR, IT) for each topic.*

### Key Facts
The reporting obligation is the key systemic element for the surveillance of communicable diseases in Switzerland. The **Guide for the reporting obligation** describes, in addition to the reporting criteria and reporting deadlines, the relevant specifics of the reporting procedure for communicable diseases and organisms subject to notification. The **poster** shows an overview of the communicable diseases and organisms subject to notification.

### Personal Data (Patient Name)
Depending on the organism, the requirement for how the patient's name (e.g. Ernst Karl Tanner) is reported varies. There are three characteristics:
* **Full name**
   * Organism: SARS-CoV-2, Legionella spp., etc.
   * [Example](Patient-Pat-ErnstKarlTanner.json.html): Ernst Karl Tanner (Patient.name.family = Tanner, Patient.name.given = Ernst, Karl)
* **Initials**
   * Organism: Neisseria gonorrhoeae, Chlamydia trachomatis, etc.
   * [Example](Patient-Pat-ET.json.html): ET (Patient.name.family = T, Patient.name.given = E)
* **Special case**
   * Organism: In the case of HIV/AIDS, under initials, enter the first letter and the number of letters of the first name. If this is longer than 9 letters, the number is 0. In the case of multi-part first names with a hyphen or in two words, only the first part is used.
   * [Example](Patient-Pat-E5.json.html): E5 (Patient.name.text = E5, Patient.name.family/Patient.name.given = masked)

The complete overview of which characteristics are used for which organisms can be found in the *Guide for the reporting obligation* or the *Overview of reporting obligation*.

### Laboratory Study Types
The laboratory report is currently either of the type [organism detection](#organism-detection) (LOINC 18725-2 Microbiology studies (set)) or [resistance detection](#resistance-detection) (LOINC 18769-0 Microbial susceptibility tests Set). These types are defined in the [ValueSet CH ELM Lab Study Types](ValueSet-ch-elm-lab-study-types.html) and are represented in the `Composition.section.code` element of the respective document. 

#### Organism Detection
* `Composition.section.code` = LOINC 18725-2 Microbiology studies (set)
* `Observation.value` = Positive/Negative ([CH ELM Results Coded Values Laboratory](ValueSet-ch-elm-results-coded-values-laboratory.html))

#### Resistance Detection
* `Composition.section.code` = LOINC 18769-0 Microbial susceptibility tests Set
* `Observation.interpretation` = Resistant/Susceptible ([CH ELM Observation Interpretation Codes](ValueSet-ch-elm-observation-interpretation-codes.html))

### Laboratory Result
The laboratory result reflects a 4-axis model. The values for the axes listed below are represented by a so-called leading LOINC code and are partially complemented by SNOMED CT codes.
* Organism (e.g. Neisseria gonorrhoeae)
* Detection (e.g. nucleic acid, antigen)
* Detection method (e.g. PCR, culture/isolation)
* Collection material (e.g. urine, blood)

### Multiplex Cases
The exchange format defines the [FHIR document](document.html) for reporting to the FOPH so that **one document per organism per patient** is submitted. 


