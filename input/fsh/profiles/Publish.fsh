Profile:        SimplifiedPublishDocumentReference
Parent:         DocumentReference
Id:             SimplifiedPublishDocumentReference
Title:          "DocumentReference for Simplified Publish"
Description:    """
A profile on the DocumentReference resource for  Simplified Publish constraints. 

Simplified Publish
- must be status current
- must have an identifer
- uses attachment.url to carry the document as a contained resource
"""
* modifierExtension 0..0
* masterIdentifier 1..1
* identifier 0..0
* status 1..1
* status = http://hl7.org/fhir/document-reference-status#current
* docStatus 0..0
* date 0..1 MS
* authenticator 0..1
* relatesTo 0..* MS
* description 0..1
* securityLabel 0..* MS
* content 1..1
* content ^definition = "The document and format referenced."
* content.attachment.language 0..1 MS
* content.attachment.url 1..1
* content.attachment.url ^short = "The document is referenced by this url, containted in the DocumentReference"
* content.attachment.creation 0..1 MS