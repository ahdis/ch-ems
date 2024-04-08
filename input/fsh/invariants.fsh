Invariant: ch-elm-dateTime
Description: "At least the format YYYY-MM-DD is required."
Severity: #error
Expression: "$this.toString().length() >= 10"

Invariant: ch-elm-doc-identifier
Description: "The identifier must be an UUID."
Severity: #error
Expression: "startsWith('urn:uuid:')"

Invariant: ch-elm-practrole
Description: "Must have at least a practitioner or an organization. Practitioner or organization must have at least a postalCode and a city defined."
Severity: #error
Expression: "(practitioner.exists() and practitioner.resolve().address.city.exists() and practitioner.resolve().address.postalCode.exists()) or (organization.exists() and organization.resolve().address.city.exists() and organization.resolve().address.postalCode.exists())"

Invariant: ch-elm-practrole-organizaton-name-exists
Description: "Must provide an organization name in case there is no practitioner."
Severity: #error
Expression: "practitioner.exists().not() implies (organization.exists() and organization.resolve().name.exists())"

Invariant: ch-elm-expecting-specimen-specification
Description: "If Observation.code is a member of http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-specimen-specification, then Specimen.type must be a member of the mapped ValueSet in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-specimen-specification-to-results-completion-vs"
Severity: #error
Expression: "code.memberOf('http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-specimen-specification') implies (specimen.resolve().exists() and specimen.resolve().type.exists() and specimen.resolve().type.memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-specimen-specification-to-results-completion-vs'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code))"

Invariant: ch-elm-leading-code
Description: "The ServiceRequest.code and the Observation.code are in general equal."
Severity: #warning
Expression: "entry.resource.ofType(ServiceRequest).code = entry.resource.ofType(Observation).code"

Invariant: ch-elm-expecting-organism-specification
Description: "If Observation.code is a member of http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-organism-specification, then Observation.valueCodeableConcept must be a member of the mapped ValueSet in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-organism-specification-to-results-completion-vs"
Severity: #error
Expression: "code.memberOf('http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-organism-specification') implies (value.exists() and (value as CodeableConcept).exists() and (value as CodeableConcept).memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-organism-specification-to-results-completion-vs'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code))"

Invariant: ch-elm-resolveableurl
Description: "Must have a resolvable URL."
Severity: #error
Expression: "url.exists() and url.resolve()"

Invariant: ch-elm-patient-name-representation-initial-loinc
Description: "If Observation.code is a mapped to initials in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation then patient.name.first and given can must have one character"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).empty() or ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code = 'initials' implies (subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientInitials')))"

Invariant: ch-elm-patient-name-representation-initial-snomedct
Description: "If Observation.code is a mapped to initials in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation then patient.name.first and given can must have one character"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).empty() or ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).target.first().code = 'initials' implies (subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientInitials')))"

Invariant: ch-elm-patient-name-representation-initial-or-vctcode-loinc
Description: "If Observation.code is a mapped to initials or vctcode in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation then patient.name.first and given can must have one character"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).empty() or ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code = 'initials-or-vctcode' implies (subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientInitials') or subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientVCT')))"

Invariant: ch-elm-patient-name-representation-initial-or-vctcode-snomedct
Description: "If Observation.code is a mapped to initials or vctcode in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation then patient.name.first and given can must have one character"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).empty() or ('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).target.first().code = 'initials-or-vctcode' implies (subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientInitials') or subject.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ChElmPatientVCT')))"

Invariant: ch-elm-interpretation-code-loinc
Description: "If Observation.code is a mapped in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code', then the interpretation code must be a member of the mapped ValueSet"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).exists() implies interpretation.memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code)"

Invariant: ch-elm-interpretation-code-snomedct
Description: "If Observation.code is a mapped in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code', then the interpretation code must be a member of the mapped ValueSet"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).exists() implies interpretation.memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-interpretation-code'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).target.first().code)"

Invariant: ber-length
Description: "BER must start with a letter followed by 8 digits"
Severity: #warning
Expression: "matches('^[A-Z][0-9]{8}$')"

Invariant: ber-modulus-11
Description: "BER must pass the modulus 11 check"
Severity: #warning
Expression: "11-((substring(1,1).toInteger()*5)+(substring(2,1).toInteger()*4)+(substring(3,1).toInteger()*3)+(substring(4,1).toInteger()*2)+(substring(5,1).toInteger()*7)+(substring(6,1).toInteger()*6)+(substring(7,1).toInteger()*5))mod(11)=substring(8,1).toInteger()"

Invariant: uidb-length
Description: "UIDB must start with 'CHE' followed by 9 digits"
Severity: #warning
Expression: "matches('^CHE[0-9]{9}$')"

Invariant: uidb-modulus-11
Description: "UIDB must pass the modulus 11 check"
Severity: #warning
Expression: "11-((substring(3,1).toInteger()*5)+(substring(4,1).toInteger()*4)+(substring(5,1).toInteger()*3)+(substring(6,1).toInteger()*2)+(substring(7,1).toInteger()*7)+(substring(8,1).toInteger()*6)+(substring(9,1).toInteger()*5)+(substring(10,1).toInteger()*4))mod(11)=substring(11,1).toInteger()"

Invariant: name-initials
Description: "a name with initials"
Severity: #error
Expression: "family.exists() and given.exists() and given.first().exists() and given.first().length() = 1 and family.length() = 1"

Invariant: string-with-at-least-two-characters-and-two-digits
Description: "at least 2 characters and at least 2 digits"
Severity: #error
Expression: "value.matches('.*[a-zA-Z].*[a-zA-Z].*') and value.matches('.*[0-9].*[0-9].*')"