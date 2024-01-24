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

Invariant: ch-elm-expecting-specimen-specification
Description: "If Observation.code is a member of http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-specimen-specification, then Specimen.type must be a member of the mapped ValueSet in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-specimen-specification-to-results-completion-vs"
Severity: #error
Expression: "code.memberOf('http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-specimen-specification') implies specimen.resolve().exists() and specimen.resolve().type.exists() and specimen.resolve().type.memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-specimen-specification-to-results-completion-vs'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code)"

Invariant: ch-elm-leading-code
Description: "The ServiceRequest.code and the Observation.code are in general equal."
Severity: #warning
Expression: "entry.resource.ofType(ServiceRequest).code = entry.resource.ofType(Observation).code"

Invariant: ch-elm-expecting-organism-specification
Description: "If Observation.code is a member of http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-organism-specification, then Observation.valueCodeableConcept must be a member of the mapped ValueSet in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-organism-specification-to-results-completion-vs"
Severity: #error
Expression: "code.memberOf('http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-organism-specification') implies value.exists() and (value as CodeableConcept).exists() and (value as CodeableConcept).memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-organism-specification-to-results-completion-vs'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code)"

Invariant: ch-elm-urlconformstochelmbundle
Description: "Must have a resolvable URL conforming to the CH-ELM Bundle."
Severity: #error
Expression: "url.exists() and url.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document')"

Invariant: ch-elm-urlconformstochelmbundlestrict
Description: "Must have a resolvable URL conforming to the CH-ELM Bundle."
Severity: #error
Expression: "url.exists() and url.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document-strict')"

Invariant: ch-elm-patient-name-representation-initial-loinc
Description: "If Observation.code is a mapped to initials in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation then patient.name.first and given can must have one character"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code = 'initials' implies subject.resolve().name.first().family.length() = 1 and  subject.resolve().name.first().given.first().length() = 1"

Invariant: ch-elm-patient-name-representation-initial-snomedct
Description: "If Observation.code is a mapped to initials in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation then patient.name.first and given can must have one character"
Severity: #error
Expression: "'http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-results-to-foph-patient-name-representation'.resolve().group.where(source='http://snomed.info/sct').element.where(code=%context.code.coding.where(system='http://snomed.info/sct').first().code).target.first().code = 'initials' implies subject.resolve().name.first().family.length() = 1 and  subject.resolve().name.first().given.first().length() = 1"