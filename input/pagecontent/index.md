### Introduction

CH ELM is a project of the Swiss Federal Office of Public Health (FOPH), Communicable Diseases Division, to enable laboratories to send their observations of notifiable communicable infectious diseases to the FOPH electronically.
A report is created as a specialized Clinical Document based on the FHIR standard. This [FHIR document](document.html) is sent to the FOPH by a [FHIR restful web api endpoint](api.html). CH ELM derives from the [Swiss implementation guides](https://fhir.ch/) and the [European laboratory project](https://build.fhir.org/ig/hl7-eu/laboratory/branches/master/index.html).

<div markdown="1" class="stu-note">

The specification herewith documented is work in progress. No liability can be inferred from the use or misuse of this specification, or its consequences.

</div>

**Download**: You can download this implementation guide in [NPM format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).


### IP Statements
HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

{% include ip-statements.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependencies

#### Dependency Overview
This overview illustrates the relevant dependencies of CH ELM to the [Swiss implementation guides](https://fhir.ch/) and the [European laboratory project](https://build.fhir.org/ig/hl7-eu/laboratory/branches/master/index.html).

{% include img.html img="ig-dependencies.png" caption="Fig.: Dependency Overview" width="60%" %}

#### Dependency Table
{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}
