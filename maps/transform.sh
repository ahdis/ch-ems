#!/bin/bash

TARGET="Bundle-$1" 
INPUT="@./$1.json"
curl --request POST \
  --url 'https://test.ahdis.ch/matchbox/fhir/StructureMap/$transform?source=http%3A%2F%2Ffhir.ch%2Fig%2Fch-elm%2FStructureMap%2FQrToBundle' \
  --header 'accept: application/fhir+xml;fhirVersion=4.0' \
  --header 'content-type: application/fhir+json;fhirVersion=4.0' \
  --header 'user-agent: vscode-restclient' \
  --data $INPUT \
  -o ../input/resources/$TARGET.xml
