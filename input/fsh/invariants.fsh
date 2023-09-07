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
