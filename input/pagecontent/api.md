CH ELM provides a RESTful Web Api based on FHIR to enable a laboratory to send its reports. 

### Scope
The Simplified Publish transaction passes a Simplified Publish Request from the Laboratory to the FOPH, providing the document directly as a FHIR Bundle.

After providing the document the Laboratory shall check through the API that the document has been successfully processed. 

### Actor Roles
**Actor:** Laboratory   
**Role:** Sends CH ELM document and metadata to the FOPH   
**Actor:** FOPH   
**Role:** Accepts the document and metadata sent from the Document Source  

### Referenced Standards
Release 4 of the [HL7® FHIR®](https://www.hl7.org/fhir/index.html) standard.

### Messages

<div>{% include SimplifiedPublishDocumentReference-seq.svg %}</div>

<br clear="all">

**Figure: Simplified Publish Interactions**

#### Simplified Publish Request Message
This message uses the HTTP POST method on the target Simplified Publish endpoint to convey the metadata and the document as a FHIR DocumentReference.

##### Trigger Events

This method is invoked when the Laboratory needs to submit one document to the FOPH. 

##### Message Semantics

The Laboratory shall initiate a FHIR “create” action by sending an HTTP POST request method composed of a FHIR [Simplified Publish DocumentReference](StructureDefinition-SimplifiedPublishDocumentReference.html), with the document referenced in the `DocumentReference.content.attachment.url` element and provided as contained bundle. 

The media type of the HTTP body shall be either `application/fhir+json` or `application/fhir+xml`.

The Simplified Publish message is sent to the DocumentReference at the base URL as defined in FHIR. See [http://hl7.org/fhir/R4/http.html](http://hl7.org/fhir/R4/http.html) for the definition of “HTTP” access methods and “base”.

```
[base]/DocumentReference
```

###### DocumentReference Resources

DocumentReference needs to follow the [Simplified Publish DocumentReference Profile](StructureDefinition-SimplifiedPublishDocumentReference.html) Resource metadata requirements. See [example](DocumentReference-1-DocumentReference.json.html).

When resources are `contained` they shall be contained using the FHIR contained method (see [http://hl7.org/fhir/R4/references.html#contained](http://hl7.org/fhir/R4/references.html#contained) ).


###### Replace, Transform, Signs, and Append Associations

The DocumentReference.relatesTo element indicates an association between DocumentReference resources. The relatesTo.target element in the provided DocumentReference points at the pre-existing DocumentReference that is being replaced, transformed, signed, or appended. The relatesTo.code element in the provided DocumentReference shall be the appropriate relationship type code defined in [http://hl7.org/fhir/R4/valueset-document-relationship-type.html](http://hl7.org/fhir/R4/valueset-document-relationship-type.html). 

<div markdown="5" class="dragon">
For the pilot there is no support for Replace, Transform, Signs, and Append Associations.
</div>
<p>&nbsp;</p>


##### Expected Actions

The FOPH shall accept both media types `application/fhir+json` and `application/fhir+xml`.

On receipt of the Simplified Publish Request Message, the FOPH shall extract the document from the DocumentReference.content.attachment.url and respond with one of the HTTP codes defined in the response [http://hl7.org/fhir/R4/http.html#ops](http://hl7.org/fhir/R4/http.html#ops). 


If the FOPH encounters any errors or if any validation fails, the FOPH shall return an error using a FHIR OperationOutcome.


#### Simplified Publish Response Message

The FOPH returns a HTTP Status code appropriate to the processing outcome, conforming to the create transaction specification requirements as specified in [http://hl7.org/fhir/R4/http.html#create](http://hl7.org/fhir/R4/http.html#create). 

If the FOPH has accepted the information it will return and id for the created DocumentReference. The DocumentReference will have an additional element returning the processsing state of the document, which can have the following values:
[in-progress](DocumentReference-1-DocumentReferenceResponseInProgress.json.html), [failed](DocumentReference-1-DocumentReferenceResponseFailed.json.html), [completed](DocumentReference-1-DocumentReferenceResponseCompleted.json.html). If failed a reference to an OperationOutcome is added.

##### Trigger Events

This message shall be sent when a success or error condition needs to be communicated. Success is only indicated once the document is received and validated to the FOPH Actor configuration. 

##### Message Semantics

To enable the Laboratory to know the outcome of processing the transaction, and the identities assigned to the resources by the FOPH, the FOPH shall return the DocumentReference as created conforming to [Simplified Publish DocumentReference Response](StructureDefinition-SimplifiedPublishDocumentReferenceResponse.html). 

##### Expected Actions

The FOPH processes the results according to application-defined rules. 
	
*Important*: The Laboratory SHALL afterwards check the status of the processing via accessing the DocumentReference directly via id (DocuemntReference/id) or querying via the provided identifier (DocumentReference?identifier=urn:uid:...) until the status is completed or failed.

### Security Considerations

mTLS SHALL be used.
<div markdown="5" class="dragon">
During the pilot a TLS client certificate will be provided by the FOPH.
</div>
<p>&nbsp;</p>
