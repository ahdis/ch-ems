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

Invariant: ch-elm-expected-materials-group
Description: "If Observation.code is a member of http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expected-materials-group, then Specimen.type must be a member of the mapped ValueSet in http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expected-materials-group-to-results-completing-vs"
Severity: #error
Expression: "code.memberOf('http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expected-materials-group') implies specimen.resolve().exists() and specimen.resolve().type.exists() and specimen.resolve().type.memberOf('http://fhir.ch/ig/ch-elm/ConceptMap/ch-elm-expected-materials-group-to-results-completing-vs'.resolve().group.where(source='http://loinc.org').element.where(code=%context.code.coding.where(system='http://loinc.org').first().code).target.first().code)"

Invariant: ch-elm-material-declared-by-loinc
Description: "Material declared by LOINC system axis"
Severity: #error
Expression: "code.memberOf('http://fhir.ch/ig/ch-elm/ValueSet/ch-elm-expected-materials-group').not() implies specimen.resolve().exists() and specimen.resolve().type.exists() and specimen.resolve().type.text.exists() and specimen.resolve().type.text='Material declared by LOINC system axis'"
