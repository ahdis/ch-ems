# Generation of examples for the IG

1. BAG (usually Franz) provides an excel sheet with a sheet for each example
2. We copy the first two columns A & B into the google sheet: Neues Beispiel;
   https://docs.google.com/spreadsheets/d/1hq3VHGY6PcS-yQy4zq2tnHpLOT99iKBGbmET9BuSaeY/edit?gid=329207338#gid=329207338
3. The cells with phone numbers (B24, B37) have an error due to the +, you need to remove the = sigg and prefix it with an apostrophe '. Make a copy (Duplicate, Rename) of the sheet with the same filename as in the example tab (e.g. 18Doc-C.diphtheriae)
4. In cell B65 a 'FHIR QuestionnaireResponse' Resource is created, copy that content in a new File to the ch-elm maps directory and create in the example with ending json.
6. With Editor, Edit Replace, replace all ("") quotes to single quotes ("), remove the (") on first and last line to get a valid json (maybe you need also remove the final comma) and format document (Shift+Alt+F) and format document.
7. Use transform.http to convert the example to a bundle, copy that bundle into file input/resources.
   1. Execute Send Requests to create the Map on matchbox (on Line 6) POST OrfQrToBundle.map, it will be a response 201 created
   2. Create the transform similar to the other examples and execute the transform, response 200 OK
   3. Store (add new File) the resulting xml in input/resources
   4. Name the file Bundle-[id].xml, eg Bundle-18Doc-C.diphtheriae.xml
   5. Add the it element <id value="[id]" /> e.g. <id value="18Doc-C.diphtheriae" />
8. Add name/description/exampleCanonical of the example to sushi-config.yaml
9. Add example in pagecontent/document.md for xml and json versions
10. Run the IG Publisher and check that no errors have been created.
11. Add new warnings to input/resources/ignoreWarnings.txt by changing in this example the url from qa.html http://localhost:52330/output/qa.html# to qa.txt http://localhost:52330/output/qa.txt#
12. Add/Update Changelog