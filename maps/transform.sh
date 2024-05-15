FILENAME="Bundle-8Doc-HepatiteB" 
INPUT="@./8Doc-HepatiteB.json"
curl --request POST \
  --url 'https://test.ahdis.ch/matchbox/fhir/StructureMap/$transform?source=http%3A%2F%2Ffhir.ch%2Fig%2Fch-elm%2FStructureMap%2FQrToBundle' \
  --header 'accept: application/fhir+xml;fhirVersion=4.0' \
  --header 'content-type: application/fhir+json;fhirVersion=4.0' \
  --header 'user-agent: vscode-restclient' \
  --data $INPUT \
  -o ../input/resources/$FILENAME.xml

FILENAME="Bundle-9Doc-HepatiteC" 
INPUT="@./9Doc-HepatiteC.json"
curl --request POST \
  --url 'https://test.ahdis.ch/matchbox/fhir/StructureMap/$transform?source=http%3A%2F%2Ffhir.ch%2Fig%2Fch-elm%2FStructureMap%2FQrToBundle' \
  --header 'accept: application/fhir+xml;fhirVersion=4.0' \
  --header 'content-type: application/fhir+json;fhirVersion=4.0' \
  --header 'user-agent: vscode-restclient' \
  --data $INPUT \
  -o ../input/resources/$FILENAME.xml

FILENAME="Bundle-10Doc-Legionella" 
INPUT="@./10Doc-Legionella.json"
curl --request POST \
  --url 'https://test.ahdis.ch/matchbox/fhir/StructureMap/$transform?source=http%3A%2F%2Ffhir.ch%2Fig%2Fch-elm%2FStructureMap%2FQrToBundle' \
  --header 'accept: application/fhir+xml;fhirVersion=4.0' \
  --header 'content-type: application/fhir+json;fhirVersion=4.0' \
  --header 'user-agent: vscode-restclient' \
  --data $INPUT \
  -o ../input/resources/$FILENAME.xml

FILENAME="Bundle-11Doc-Malaria" 
INPUT="@./11Doc-Malaria.json"
curl --request POST \
  --url 'https://test.ahdis.ch/matchbox/fhir/StructureMap/$transform?source=http%3A%2F%2Ffhir.ch%2Fig%2Fch-elm%2FStructureMap%2FQrToBundle' \
  --header 'accept: application/fhir+xml;fhirVersion=4.0' \
  --header 'content-type: application/fhir+json;fhirVersion=4.0' \
  --header 'user-agent: vscode-restclient' \
  --data $INPUT \
  -o ../input/resources/$FILENAME.xml

FILENAME="Bundle-12Doc-Monkeypox" 
INPUT="@./12Doc-Monkeypox.json"
curl --request POST \
  --url 'https://test.ahdis.ch/matchbox/fhir/StructureMap/$transform?source=http%3A%2F%2Ffhir.ch%2Fig%2Fch-elm%2FStructureMap%2FQrToBundle' \
  --header 'accept: application/fhir+xml;fhirVersion=4.0' \
  --header 'content-type: application/fhir+json;fhirVersion=4.0' \
  --header 'user-agent: vscode-restclient' \
  --data $INPUT \
  -o ../input/resources/$FILENAME.xml

FILENAME="Bundle-13Doc-Shigella" 
INPUT="@./13Doc-Shigella.json"
curl --request POST \
  --url 'https://test.ahdis.ch/matchbox/fhir/StructureMap/$transform?source=http%3A%2F%2Ffhir.ch%2Fig%2Fch-elm%2FStructureMap%2FQrToBundle' \
  --header 'accept: application/fhir+xml;fhirVersion=4.0' \
  --header 'content-type: application/fhir+json;fhirVersion=4.0' \
  --header 'user-agent: vscode-restclient' \
  --data $INPUT \
  -o ../input/resources/$FILENAME.xml
