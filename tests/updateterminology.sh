#!/bin/sh

CERT=""
KEY=""

VALUESET="ch-elm-results-laboratory-observation"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-geni-spec"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-cpe-org"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-results-completion-vs"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-foph-patient-name-representation"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-expecting-specimen-specification"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

VALUESET="ch-elm-expecting-organism-specification"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ValueSet/$VALUESET \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ValueSet-$VALUESET.json

CONCEPTMAP="ch-elm-expecting-organism-specification-to-results-completion-vs"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ConceptMap/$CONCEPTMAP \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ConceptMap-$CONCEPTMAP.json

CONCEPTMAP="ch-elm-expecting-specimen-specification-to-results-completion-vs"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ConceptMap/$CONCEPTMAP \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ConceptMap-$CONCEPTMAP.json

CONCEPTMAP="ch-elm-results-to-foph-patient-name-representation"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/ConceptMap/$CONCEPTMAP \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/ConceptMap-$CONCEPTMAP.json

CODESYSTEM="ch-elm-foph-business-rules"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/CodeSystem/$CODESYSTEM \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/CodeSystem-$CODESYSTEM.json

CODESYSTEM="ch-elm-foph-patient-name-representation"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/CodeSystem/$CODESYSTEM \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/CodeSystem-$CODESYSTEM.json

CODESYSTEM="ch-elm-results-completion-vs"
curl --request GET \
  --url https://ws.infreport-a.bag.admin.ch/ch-elm/v1/fhir/CodeSystem/$CODESYSTEM \
  --header 'accept: application/fhir+json' \
  --header 'user-agent: vscode-restclient' \
  --cert $CERT \
  --key $KEY \
  -o ../input/resources/CodeSystem-$CODESYSTEM.json