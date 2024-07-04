# CH ELM (R4)
FHIR® Implementation Guide for the Electronic Laboratory Report of the Swiss Federal Office of Public Health (FOPH).

* [Current Stable Version](https://fhir.ch/ig/ch-elm/index.html)
* [CI Build](https://build.fhir.org/ig/ahdis/ch-elm/branches/master/index.html)

## Terminology handling

Terminology is handled by the FOPH directly on the ABN environment.

To update the current ValueSets and CodeSystem in the FHIR Implementation Guide there is a script in tests/updateterminolgy.sh which will
call the ABN environment API and copy the resources into the input\resources folder. 
