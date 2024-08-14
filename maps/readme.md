# Generation of examples for the IG

1. BAG (usually Franz) provides an excel sheet with a sheet for each example
2. We copy the first two columns into the google sheet: Neues Beispiel;
   https://docs.google.com/spreadsheets/d/1hq3VHGY6PcS-yQy4zq2tnHpLOT99iKBGbmET9BuSaeY/edit?gid=329207338#gid=329207338
3. The cells with phone numbers (B24, B37) have an error due to the +, you need to remove the = sigg and prefix it with an apostrophe '
4. In cell B65 a 'FHIR QuestionnaireResponse' Resource is created, copy that content
to the ch-elm maps directory. Create the example with ending json.
6. With Editor, Edit Replace, replace all '""' quotes to single quotes '"', remove the '"' on first and last line to get a valid json (maybe you need also remove the final comma)
7. Use transform.http to convert the example to a bundle, copy that bundle into file input/resources.
8. Add name/description of the example to sushi-config.yaml
9. Run the IG Publisher and check that no errors have been created.