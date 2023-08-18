### Szenario 1 - Meldeweg für den Standardfall

Dieser Meldeweg gilt für Erreger wie [Neisseria Gonorrhoeae](#neisseria-gonorrhoeae), [Chlamydia trachomatis](#chlamydia-trachomatis) und weitere.

{% include img.html img="scenario1.png" caption="Abb. 3: Meldeweg für den Standardfall" width="60%" %}

#### Neisseria Gonorrhoeae
[Herr Daniel Meier](Patient-1Pat-DM.html) geboren am 22.08.1960, wohnhaft in 3000 Bern, konsultiert am 11.07.2023 seine Ärztin [Martine Giacometti](PractitionerRole-1PR-FamilyPractice.html). Herr Meier klagt über Juckreiz der Harnröhre und Schmerzen beim Wasserlassen. Da der Verdacht auf eine Harnwegsinfektion besteht, wird ein [Abstrich](Specimen-1Spec-Specimen.html) abgenommen und dieser zusammen mit einem [Laborauftrag](ServiceRequest-1SR-Order.html) zur Analyse an das [Labor Viollier](PractitionerRole-1PR-LaborViollier.html) geschickt. Mittels Isolierung in Kultur wird am 14.07.2023 [Neisseria gonorrhoeae nachgewiesen (LOINC 697-3)](Observation-1Obs-NeisseriaGonorrhoeae.html). Das Labor meldet den [meldepflichtig Laborbefund](Bundle-1Doc-NeisseriaGonorrhoeae.html) dem Meldesystem des Bundesamtes für Gesundheit.

#### Chlamydia trachomatis
Frau Isolde Huber geboren am 15.03.1969, wohnhaft in Basel, konsultiert am 12.07.2023 ihre Ärztin Melinda Weiss. Frau Huber klagt über Brennen beim Wasserlösen und vaginalem Ausfluss. Da der Verdacht auf eine Harnwegsinfektion besteht, wird ein Abstrich abgenommen und zur Analyse an das Labor Dr. Risch geschickt. Mittels Multiplex PCR wird am 15.07.2023 Chlamydia trachomatis nachgewiesen, der Nachweis von Neisseria gonorrhoeae ist negativ (LOINC 44807-6). Das Labor meldet den positiven Befund für Chlamydia trachomatis dem Meldesystem des Bundesamtes für Gesundheit.

### Szenario 2 - Meldeweg für Bestätigungstests

Dieser Meldeweg gilt für Erreger wie [Salmonella spp.](#salmonella-spp), [Neisseria meningitidis](#neisseria-meningitidis) und weitere.

{% include img.html img="scenario2.png" caption="Abb. 4: Meldeweg für Bestätigungstests" width="60%" %}

#### Salmonella spp.
In einer Blutprobe wurden Salmonella spp. gefunden. Eine Befundmeldung geht an den Auftraggeber (Praxis/Klinik); eine 1. Meldung erfolgt an das BAG (unter Angabe der Auftragsnummer und des/ der auftraggebenden Arztes/ Klinik).
Da es sich nicht um den Typ S. enteritidis handelt, wird die Probe zur genauen Typisierung an das Nationale Zentrum für enteropathogene Bakterien und Listerien („NENT“, Sekundärlabor) geschickt. Das Sekundärlabor benötigt Stammdaten zum Auftraggeber und zum Patienten, Angaben zur Herkunft der Probe (Lebensmittel, Faeces, Blut, Urin etc.), die gewünschte Typisierung und die vorangehenden Resultate. Nach erfolgter Typisierung schickt das Sekundärlabor seine Befunde (die 2. Meldung) zusammen mit der Auftragsnummer des zuweisenden Labors an das BAG.


#### Neisseria meningitidis
Eine Liquorprobe wurde vom Kreisspital notfallmässig zugeschickt und direkt mikroskopisch untersucht. Es finden sich gramnegative Diplokokken. Dieser Befund zu einer Infektion mit Neisseria meningitidis muss innerhalb eines Tages gemeldet werden. Die weitere Verarbeitung (Kultur, Genomsequenz) erfolgt durch das Nationale Zentrum für Meningokokken (Sekundärlabor), von welchem wiederum eine vollständige Meldung zusammen mit der Auftrags ... **TODO:** Text endet hier im CDA-Dokument


### Szenario 3 - Meldeweg bei Weitergabe eines Laborautrages oder bei HIV-Diagnose

{% include img.html img="scenario3.png" caption="Abb. 5: Meldeweg bei Weitergabe eines Laborautrages oder bei HIV-Diagnose" width="55%" %}
