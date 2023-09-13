The website of the Federal Office of Public Health (FOPH) ([EN](https://www.bag.admin.ch/bag/en/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html), [DE](https://www.bag.admin.ch/bag/de/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html), [FR](https://www.bag.admin.ch/bag/fr/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html), [IT](https://www.bag.admin.ch/bag/it/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html)) provides further documentation on infectious diseases requiring notification. The most important points for the implementation of this FHIR exchange format are included here.

*Please visit the FOPH website to access the most recent documents in the desired language (EN, DE, FR, IT) for each topic.*

### Key Facts
The reporting obligation is the key systemic element for the surveillance of communicable diseases in Switzerland. Notifiable laboratory findings must comply with the legal provisions regarding reporting criteria, reporting deadlines and reporting data in accordance with the Ordinance of the FDHA on the Reporting of Observations of Communicable human diseases (SR 818.101.126), ([DE](https://www.fedlex.admin.ch/eli/cc/2015/892/de), [FR](https://www.fedlex.admin.ch/eli/cc/2015/892/fr), [IT](https://www.fedlex.admin.ch/eli/cc/2015/892/it)).

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

The complete overview of which characteristics are used for which organisms can be found in the Ordinance of the FDHA on the Reporting of Observations of Communicable human diseases (SR 818.101.126), ([DE](https://www.fedlex.admin.ch/eli/cc/2015/892/de), [FR](https://www.fedlex.admin.ch/eli/cc/2015/892/fr), [IT](https://www.fedlex.admin.ch/eli/cc/2015/892/it)).

### Laboratory Study Types
The laboratory report is currently either of the type [organism detection](#organism-detection) (LOINC 18725-2 Microbiology studies (set)) or [resistance detection](#resistance-detection) (LOINC 18769-0 Microbial susceptibility tests Set). These types are defined in the [ValueSet CH ELM Lab Study Types](ValueSet-ch-elm-lab-study-types.html) and are represented in the `Composition.section.code` element of the respective document. 

#### Organism Detection
* `Composition.section.code` = LOINC 18725-2 Microbiology studies (set)
* `Observation.value` = Positive/Negative ([CH ELM Results Coded Values Laboratory](ValueSet-ch-elm-results-coded-values-laboratory.html))
* `Observation.interpretation` = Positive/Negative ([CH ELM Observation Interpretation Codes](ValueSet-ch-elm-observation-interpretation-codes.html))

[Example](Bundle-1Doc-NeisseriaGonorrhoeae.html): Laboratory report for Neisseria gonorrhoeae

#### Resistance Detection
* `Composition.section.code` = LOINC 18769-0 Microbial susceptibility tests Set
* `Observation.interpretation` = Resistant/Susceptible ([CH ELM Observation Interpretation Codes](ValueSet-ch-elm-observation-interpretation-codes.html))

### Laboratory Result
The laboratory result is represented by a so called leading LOINC and laboratories are requested to choose the code from the provided ValueSet ([CH ELM Results Laboratory Observation](ValueSet-ch-elm-results-laboratory-observation.html)) that corresponds to the test parameters performed. The LOINC Code reflects a 4-axis model and ideally, the chosen LOINC Code covers all 4 axes.

[Example](Bundle-1Doc-NeisseriaGonorrhoeae.html): LOINC [697-3 Neisseria gonorrhoeae [Presence] in Urethra by Organism specific culture](https://loinc.org/697-3/):

* **Organism** Neisseria gonorrhoeae
* **Detection** organism growth
* **Detection method** organism specific culture
* **Collection material** urethra

If the leading LOINC code does not cover all axes, the missing axis must be complemented by a SNOMED code (see below “Collection Material“)

[Example](Bundle-2Doc-ChlamydiaTrachomatis.html): The leading LOINC code (Observation.code = LOINC 6349-5), complemented by a SNOMED CT code for the collection material (Specimen.type = SNOMED CT 119393003)

**Important note**: the [valueset](ValueSet-ch-elm-results-laboratory-observation.html) is a selection of LOINC codes related to notifiable diseases and their legal basis. The [valueset](ValueSet-ch-elm-results-laboratory-observation.html) can be adapted according to laboratory-specific needs - please contact the FOPH in this regard.

#### Collection Material
In the cases described below, the collection material must be explicitly specified.

* Chlamydia trachomatis
   * if Observation.code = LOINC 21613-5 / 31777-6 / 43304-5 / 6349-5
   * use a Specimen.type form the [ValueSet CH ELM Lab Specimen Types: Chlamydia Trachomatis](ValueSet-ch-elm-lab-specimen-types-chlamydia-trachomatis.html)

In all other cases, the Specimen.type has to be defined as fixed text: “Material declared by LOINC system axis”

### Multiplex Cases
The exchange format defines the [FHIR document](document.html) for reporting to the FOPH so that **one document per organism per patient** is submitted. 


