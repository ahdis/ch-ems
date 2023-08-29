Profile:        SimplifiedPublishDocumentReference
Parent:         DocumentReference
Id:             SimplifiedPublishDocumentReference
Title:          "DocumentReference for Simplified Publish"
Description:    """
A profile on the DocumentReference resource for Simplified Publish constraints. 

Simplified Publish
- must be status current
- must have an masterIdentifer
- uses attachment.url to carry the document as a contained resource
"""
* modifierExtension 0..0
* identifier 1..1
* status 1..1
* status = http://hl7.org/fhir/document-reference-status#current
* docStatus 0..0
* date 0..1 MS
* authenticator 0..1
* relatesTo 0..* MS
* description 0..1
* securityLabel 0..* MS
* content 1..1
* content ^definition = "The document and format referenced"
* content.attachment.language 0..1 MS
* content.attachment.url 1..1
* content.attachment.url ^short = "The document is referenced by this url, containted in the DocumentReference"
* content.attachment.creation 0..1 MS

ValueSet: ChElmStatus
Id: ch-elm-status
Title: "CH ELM Status"
Description: "This CH ELM value set includes the codes for the laboratory specialties."
* ^status = #active
* ^experimental = false

* $task-status#in-progress "in-progress"
* $task-status#failed "failed"
* $task-status#completed "completed"

Extension: ChExtElmStatus
Id: ch-ext-elm-status
Title: "Status of the processing of the document"
Description: "Extension to define the status of the processing of the document"

* ^context.type = #element
* ^context.expression = "DocumentReference"

* . ^definition = "Extension to define the status of the processing of the document"
* extension contains
    status 1..1 and
    outcome 0..1
* extension[status] only Extension
* extension[status] ^short = "Status of the processing of the document"
* extension[status].url only uri
* extension[status].valueCode 1..
* extension[status].valueCode only code
* extension[status].valueCode from $ch-elm-status (required)
* extension[status].valueCode ^short = "Code to indicate the status of the processing of the document"
* extension[outcome] ^short = "Timestamp of the authorship/data input"
* extension[outcome].url only uri
* extension[outcome].valueReference 1..
* extension[outcome].valueReference only Reference(OperationOutcome)
* extension[outcome].valueReference ^short = "reference to contained OperationOutcome if processing failed"
* extension[outcome].valueReference ^type.aggregation[0] = #contained
* url only uri

Profile:        SimplifiedPublishDocumentReferenceResponse
Parent:         DocumentReference
Id:             SimplifiedPublishDocumentReferenceResponse
Title:          "DocumentReference for Simplified Publish Response"
Description:    """
A profile on the DocumentReference resource for Simplified Publish Response constraints. 

Simplified Publish Response
- must be status current
- must have an identifer
"""
* extension contains ChExtElmStatus named chextelmstatus 1..1
* modifierExtension 0..0
* identifier 1..1
* status 1..1
* status = http://hl7.org/fhir/document-reference-status#current
* docStatus 0..0
* date 0..1 MS
* authenticator 0..1
* relatesTo 0..* MS
* description 0..1
* securityLabel 0..* MS