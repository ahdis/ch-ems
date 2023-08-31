### Introduction
CH ELM is a project of the Swiss Federal Office of Public Health (FOPH), Communicable Diseases Division, to enable laboratories to send their observations of notifiable communicable infectious diseases to the FOPH electronically.
A report is created as a specialized Clinical Document based on the HL7® FHIR® standard. This [FHIR document](document.html) is sent to the FOPH by a [FHIR restful web api endpoint](api.html). CH ELM derives from the [Swiss implementation guides](https://fhir.ch/) and the [European laboratory project](https://build.fhir.org/ig/hl7-eu/laboratory/branches/master/index.html) (see [graphical overview](#dependency-overview)).

The expected content of the FHIR document, based on the regulation of the Federal Department of Home Affairs (FDHA) ([DE](https://www.fedlex.admin.ch/eli/cc/2015/892/de), [FR](https://www.fedlex.admin.ch/eli/cc/2015/892/fr), [IT](https://www.fedlex.admin.ch/eli/cc/2015/892/it)), is defined in the [logical model](StructureDefinition-LaboratoryReport.html). A [mapping](StructureDefinition-LaboratoryReport-mappings.html#mappings-for-ch-elm-laboratory-report-to-fhir-hl7-org-fhir-r4) shows to which FHIR elements the data is mapped. In addition, further documentation for specific topics can be found on the [guidance](guidance.html) page and the use cases ([DE](usecase-german.html)) describe the different scenarios with respective examples for specific organisms.

<div markdown="1" class="stu-note">

The specification herewith documented is work in progress. No liability can be inferred from the use or misuse of this specification, or its consequences.

</div>

**Download**: You can download this implementation guide in [NPM format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

### Must Support
For the CH ELM exchange format, the [mustSupport](https://www.hl7.org/fhir/profiling.html#mustsupport) flag set to `true` has the following meaning:   
If the sending application has data for the element, it is required to populate the element with a non-empty value. If the value is not known, the element may be omitted.

### IP Statements
HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

{% include ip-statements.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependencies

#### Dependency Overview
This overview illustrates the relevant dependencies of CH ELM to the [Swiss implementation guides](https://fhir.ch/) and the [European laboratory project](https://build.fhir.org/ig/hl7-eu/laboratory/branches/master/index.html).

{% include img.html img="ig-dependencies.png" caption="Fig. 1: Dependency Overview" width="60%" %}

#### Dependency Table
{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}
