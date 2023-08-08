### Szenario 1 - Meldeweg für den Standardfall

Dieser Meldeweg gilt für Erreger wie [Neisseria Gonorrhoeae](#neisseria-gonorrhoeae), [Chlamydia trachomatis](#chlamydia-trachomatis), Campylobacter, Treponema pallidum, Influenza virus und weitere.

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

#### Chlamydia trachomatis

DRAFT:   
Frau Isolde Huber geboren am 15.03.1969, Wohnhaft in Basel, konsultiert am 12.07.2023 ihre Ärztin Melinda Weiss. Frau Huber klagt über Brennen beim Wasserlösen und vaginalem Ausfluss. Da der Verdacht auf eine Harnwegsinfektion besteht, wird ein Abstrich abgenommen und zur Analyse an das Labor Dr. Risch geschickt. Mittels Multiplex PCR wird am 15.07.2023 Chlamydia trachomatis nachgewiesen, der Nachweis von Neisseria gonorrhoeae ist negativ (LOINC 44807-6). Das Labor meldet den positiven Befund für Chlamydia trachomatis dem Meldesystem des Bundesamtes für Gesundheit.

### Szenario 2 - Meldeweg für Bestätigungstests

Dieser Meldeweg gilt für Erreger wie Masern, Pocken, [Salmonella spp.](#salmonella-spp), [Neisseria meningitidis](#neisseria-meningitidis) und weitere.

{% include img.html img="scenario2.png" caption="Abb.: Meldeweg für Bestätigungstests" width="60%" %}

#### Salmonella spp.
In einer Blutprobe wurden Salmonella spp. gefunden. Eine Befundmeldung geht an den Auftraggeber (Praxis/Klinik); eine 1. Meldung erfolgt an das BAG (unter Angabe der Auftragsnummer und des/ der auftraggebenden Arztes/ Klinik).
Da es sich nicht um den Typ S. enteritidis handelt, wird die Probe zur genauen Typisierung an das Nationale Zentrum für enteropathogene Bakterien und Listerien („NENT“, Sekundärlabor) geschickt. Das Sekundärlabor benötigt Stammdaten zum Auftraggeber und zum Patienten, Angaben zur Herkunft der Probe (Lebensmittel, Faeces, Blut, Urin etc.), die gewünschte Typisierung und die vorangehenden Resultate. Nach erfolgter Typisierung schickt das Sekundärlabor seine Befunde (die 2. Meldung) zusammen mit der Auftragsnummer des zuweisenden Labors an das BAG.


#### Neisseria meningitidis
Eine Liquorprobe wurde vom Kreisspital notfallmässig zugeschickt und direkt mikroskopisch untersucht. Es finden sich gramnegative Diplokokken. Dieser Befund zu einer Infektion mit Neisseria meningitidis muss innerhalb eines Tages gemeldet werden. Die weitere Verarbeitung (Kultur, Genomsequenz) erfolgt durch das Nationale Zentrum für Meningokokken (Sekundärlabor), von welchem wiederum eine vollständige Meldung zusammen mit der Auftrags ... TODO


