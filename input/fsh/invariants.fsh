Invariant: ch-elm-dateTime
Description: "At least the format YYYY-MM-DD is required."
Severity: #error
Expression: "$this.toString().length() >= 10"

Invariant: ch-elm-doc-identifier
Description: "The identifier must be an UUID."
Severity: #error
Expression: "startsWith('urn:uuid:')"

Invariant: ch-elm-practrole
Description: "Must have at least a practitioner or an organization."
Severity: #error
Expression: "practitioner.exists() or practitioner.exists()"

Invariant: ch-elm-expecting-specimen-specification
Description: "If Observation.code is a member of http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-specimen-specification, then Specimen.type must be a member of the mapped ValueSet in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-specimen-specification-to-result-completion-vs"
Severity: #error
Expression: "code.memberOf('http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-specimen-specification') implies specimen.resolve().exists() and specimen.resolve().type.exists() and specimen.resolve().type.memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expecting-specimen-specification-to-result-completion-vs'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code)"

Invariant: ch-elm-material
Description: "Material declared by Observation.code or non-mandatory."
Severity: #error
Expression: "code.memberOf('http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expecting-specimen-specification').not() implies specimen.resolve().exists() and specimen.resolve().type.exists() and specimen.resolve().type.text.exists() and specimen.resolve().type.text.first()='Material declared by Observation.code or non-mandatory'"

Invariant: ch-elm-leading-code
Description: "The ServiceRequest.code and the Observation.code are in general equal."
Severity: #warning
Expression: "entry.resource.ofType(ServiceRequest).code = entry.resource.ofType(Observation).code"

Invariant: ch-elm-urlconformstochelmbundle
Description: "Must have a resolvable URL conforming to the CH-ELM Bundle."
Severity: #error
Expression: "url.exists() and url.resolve().conformsTo('http://fhir.ch/ig/ch-elm/StructureDefinition/ch-elm-document')"
