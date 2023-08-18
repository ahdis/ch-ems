The website of the Federal Office of Public Health (FOPH) ([EN](https://www.bag.admin.ch/bag/en/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html), [DE](https://www.bag.admin.ch/bag/de/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html), [FR](https://www.bag.admin.ch/bag/fr/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html), [IT](https://www.bag.admin.ch/bag/it/home/krankheiten/infektionskrankheiten-bekaempfen/meldesysteme-infektionskrankheiten/meldepflichtige-ik.html)) provides further documentation on infectious diseases requiring notification. The most important points for the implementation of this FHIR exchange format are included here.

*Please visit the FOPH website to access the most recent documents in the desired language (EN, DE, FR, IT) for each topic.*

### Key Facts
The reporting obligation is the key systemic element for the surveillance of communicable diseases in Switzerland. The **Guide for the reporting obligation** describes, in addition to the reporting criteria and reporting deadlines, the relevant specifics of the reporting procedure for communicable diseases and pathogens subject to notification. The **poster** shows an overview of the communicable diseases and pathogens subject to notification.

### Personal Data (Patient Name)
Depending on the pathogen, the requirement for how the patient's name (e.g. Ernst Karl Tanner) is reported varies. There are three characteristics:
* **Full name**
   * Pathogen: SARS-CoV-2, Legionella spp., etc.
   * [Example](Patient-Pat-ErnstKarlTanner.json.html): Ernst Karl Tanner (Patient.name.family = Tanner, Patient.name.given = Ernst, Karl)
* **Initials**
   * Pathogen: Neisseria gonorrhoeae, Chlamydia trachomatis, etc.
   * [Example](Patient-Pat-ET.json.html): ET (Patient.name.family = T, Patient.name.given = E)
* **Special case**
   * Pathogen: In the case of HIV/AIDS, under initials, enter the first letter and the number of letters of the first name. If this is longer than 9 letters, the number is 0. In the case of multi-part first names with a
hyphen or in two words, only the first part is used.
   * [Example](Patient-Pat-E5.json.html): E5 (Patient.name.given = E5)

The complete overview of which characteristics are used for which pathogens can be found in the *Guide for the reporting obligation* or the *Overview of reporting obligation*.

**TODO:**    
Im Falle von HIV/AIDS sind wir (noch) nicht konform zu EU-LAB, da dort name.family required ist (https://build.fhir.org/ig/hl7-eu/laboratory/branches/master/StructureDefinition-Patient-eu-lab.html). Frage gestellt, ob das so bleibt, oder es eine Chance gibt, das anzupassen (18.08.).   
Ebenfalls ist die Konformität zu CH Core noch nicht gewährleistet: https://github.com/hl7ch/ch-core/issues/240

### Multiplex Cases
The exchange format defines the [FHIR document](document.html) for reporting to the FOPH so that **one document per pathogen per patient** is submitted. 


