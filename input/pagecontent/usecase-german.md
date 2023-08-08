### Szenario 1 - Meldeweg für den Standardfall

Dieser Meldeweg gilt für Erreger wie [Neisseria Gonorrhoeae](#neisseria-gonorrhoeae), Chlamydia trachomatis, Campylobacter, Treponema pallidum, Influenza virus und weitere.

{% include img.html img="scenario1.png" caption="Abb.: Meldeweg für den Standardfall" width="60%" %}

#### Neisseria Gonorrhoeae

DRAFT:   
Herr Ernst Tanner geboren am 22.08.1966, Wohnhaft in Bern, konsultiert am 11.07.2023 seine Ärztin Martine Giacometti. Herr Tanner klagt über Juckreiz der Harnröhre und Schmerzen beim Wasserlassen. Da der Verdacht auf eine Harnwegsinfektion besteht, wird ein Abstrich abgenommen und zur Analyse an das Labor Viollier geschickt. Mittels Isolierung in Kultur wird am 14.07.2023 Neisseria gonorrhoeae nachgewiesen (LOINC 697-3). Das Labor meldet den meldepflichtig Laborbefund dem Meldesystem des Bundesamtes für Gesundheit.

* [Laborbericht: Neisseria Gonorrhoeae positiv](Bundle-1Doc-NeisseriaGonorrhoeae.html)
   * [positives Testresultat](Observation-1Obs-NeisseriaGonorrhoeae.html) vom 01.02.2023
   * [Urinprobe](Specimen-1Spec-Specimen-Orderer.html) vom 01.02.2023
   * Patientin [Frau D. M.](Patient-1Pat-DM.html), geboren 22.08.1960, wohnhaft in 3000 Bern
   * [Auftraggeberin](PractitionerRole-1PR-CentreDeTestXa.html) ist [Martine Giacometti](Practitioner-1Pract-CentreDeTestXa.html) vom [Centre de test XA](Organization-1Org-CentreDeTestXa.html) (Abteilung hematology) in Zürich
   * Das [meldepflichtige Laboratorium](PractitionerRole-1PR-MedCompany.html) ist [MedCompany](Organization-1Org-MedCompany.html) mit dem Identifikationscode 54322, welcher durch das BAG vergeben wird. [Martina Reporter](Practitioner-1Pract-MedCompany.html) ist die verantwortliche Laborleiterin. Der [Laborauftrag](ServiceRequest-1SR-Order1.html) hat die - innerhalb jeder Meldeeinheit eindeutige - Nummer U3F342, welche zur Nachverfolgung dient.


### Szenario 2 - Meldeweg für Bestätigungstests

Dieser Meldeweg gilt für Erreger wie Masern, Pocken, Salmonellen und weitere.

{% include img.html img="scenario2.png" caption="Abb.: Meldeweg für Bestätigungstests" width="60%" %}

#### TODO
...