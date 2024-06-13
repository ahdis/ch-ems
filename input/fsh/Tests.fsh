Alias: $testscript-operation-codes = http://terminology.hl7.org/CodeSystem/testscript-operation-codes

RuleSet: Fixture(id, reference) 
* fixture.id = "{id}"
* fixture.autocreate = false
* fixture.autodelete = false
* fixture.resource = Reference({reference})

RuleSet: ActionOperationValidate(profile, fixtureId) 
* test.action[+].operation.type = $testscript-operation-codes#validate
* test.action[=].operation.description = "validate"
* test.action[=].operation.contentType = #application/fhir+json
* test.action[=].operation.encodeRequestUrl = true
* test.action[=].operation.params = "profile={profile}"
* test.action[=].operation.sourceId = "{fixtureId}"

RuleSet: ActionAssertResponseCodeOk 
* test.action[+].assert.description = "Confirm that the returned HTTP status is 200(OK)."
* test.action[=].assert.direction = #response
* test.action[=].assert.responseCode = "200"
* test.action[=].assert.warningOnly = false

RuleSet: ActionAssertFhirPath(description, fhirPath, value) 
* test.action[+].assert.description = "{description}"
* test.action[=].assert.expression = "{fhirPath}"
* test.action[=].assert.value = {value}
* test.action[=].assert.warningOnly = false

RuleSet: ActionAssertFhirPathTrue(description, fhirPath)
* insert ActionAssertFhirPath({description}, [[{fhirPath}]], "true")


Instance: Test92-WarningBerUidGln
InstanceOf: TestScript
* url = "http://fhir.ch/ig/ch-elm/TestScript/Test92-WarningBerUidGln"
* name = "Test92WarningBerUidGln"
* status = #active
* insert Fixture(inputdata, [[Binary/Test92-Bundle-WarningBerUidGln]])
* test.name = "Test92"
* test.description = "Test92: Verify that warnings for incorrect BER, UID and GLN are raised"
* insert ActionOperationValidate(http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document-strict, inputdata)
* insert ActionAssertResponseCodeOk
* insert ActionAssertFhirPathTrue(Confirm that the returned resource is an OperationOutcome., [[is(FHIR.OperationOutcome)]])
* insert ActionAssertFhirPathTrue(Confirm that we have no errors., [[issue.where(severity='error' or severity='fatal').count()=0]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: gln-modulus-10, [[issue.where(severity='warning' and diagnostics.startsWith('Constraint failed: gln-modulus-10:')).count() = 1]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: gln-startswith76, [[issue.where(severity='warning' and diagnostics.startsWith('Constraint failed: gln-startswith76:')).count() = 1]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: ber-length, [[issue.where(severity='warning' and diagnostics.startsWith('Constraint failed: ber-length')).count() = 1]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: ber-modulus-11, [[issue.where(severity='warning' and diagnostics.startsWith('Constraint failed: ber-modulus-11')).count() = 1]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: uidb-length, [[issue.where(severity='warning' and diagnostics.startsWith('Constraint failed: uidb-length')).count() = 1]])
* insert ActionAssertFhirPathTrue(Check Constraint failed: uidb-modulus-11, [[issue.where(severity='warning' and diagnostics.startsWith('Constraint failed: uidb-modulus-11')).count() = 1]])


Instance: Test93-Error-FullName-Influenca
InstanceOf: TestScript
* url = "http://fhir.ch/ig/ch-elm/TestScript/Test93-Error-FullName-Influenca"
* name = "Test93ErrorFullNameInfluenca"
* status = #active
* insert Fixture(inputdata, [[Binary/Test93-DocumentReference-Error-FullName-Influenca]])
* test.name = "Test93"
* test.description = "Test script to verify error if full name is provided by Influenca (must be initials)"
* insert ActionOperationValidate(http://fhir.ch/ig/ch-elm/StructureDefinition/PublishDocumentReference, inputdata)
* insert ActionAssertResponseCodeOk
* insert ActionAssertFhirPathTrue(Confirm that the returned resource is an OperationOutcome., [[is(FHIR.OperationOutcome)]])
* insert ActionAssertFhirPathTrue(Confirm that we have at least one error, [[issue.where(severity='error' or severity='fatal').count()>0]])
* insert ActionAssertFhirPathTrue(Check slicing fails, [[issue.where(severity='error' and diagnostics.startsWith('Slice \\'DocumentReference.contained:document\\': minimum required = 1, but only found 0')).count() > 0]])
