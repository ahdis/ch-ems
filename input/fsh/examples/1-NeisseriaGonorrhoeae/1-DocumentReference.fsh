Instance: 1-DocumentReference
InstanceOf: SimplifiedPublishDocumentReference
Usage: #example
Title: "DocumentReference for reporting Neisseria Gonorhoeae"
Description: "Example for a CH ELM DocumentReference: Laboratory Report."
* contained = 1Doc-NeisseriaGonorrhoeae
* status = #current
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* content.attachment.language = #de-CH
* content.attachment.url = "#1Doc-NeisseriaGonorrhoeae" 

Instance: 1-DocumentReferenceResponseInProgress
InstanceOf: SimplifiedPublishDocumentReferenceResponse
Usage: #example
Title: "DocumentReference Response for Neisseria Gonorhoeae in progress"
Description: "Example for a CH ELM DocumentReference: Laboratory Report - in-progress"
* extension[chextelmstatus].extension[status].url = "status"
* extension[chextelmstatus].extension[status].valueCode = $task-status#in-progress
* status = #current
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* content.attachment.url = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"

Instance: 1-DocumentReferenceResponseCompleted
InstanceOf: SimplifiedPublishDocumentReferenceResponse
Usage: #example
Title: "DocumentReference Response for  Neisseria Gonorhoeae completed"
Description: "Example for a CH ELM DocumentReference: Laboratory Report - completed"
* extension[chextelmstatus].extension[status].url = "status"
* extension[chextelmstatus].extension[status].valueCode = $task-status#completed
* status = #current
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* content.attachment.url = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"

Instance: 1-OperationOutcome
InstanceOf: OperationOutcome
Usage: #inline
* issue.severity = #error
* issue.code = #not-supported
* issue.details.text = "unknown type of laboratory report"

Instance: 1-DocumentReferenceResponseFailed
InstanceOf: SimplifiedPublishDocumentReferenceResponse
Usage: #example
Title: "DocumentReference for  Neisseria Gonorhoeae - falied"
Description: "Example for a CH ELM DocumentReference: Laboratory Report - failed"
* contained = 1-OperationOutcome
* extension[chextelmstatus].extension[status].url = "status"
* extension[chextelmstatus].extension[status].valueCode = $task-status#failed
* extension[chextelmstatus].extension[outcome].url = "outcome"
* extension[chextelmstatus].extension[outcome].valueReference.reference = "#1-OperationOutcome"
* status = #current
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[0].value = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
* content.attachment.url = "urn:uuid:1901332d-6012-443f-9690-9291adb2e19d"
