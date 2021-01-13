---
title: Common Microsoft Defender ATP API errors
description: List of common Microsoft Defender ATP API errors with descriptions.
keywords: apis, mdatp api, errors, troubleshooting 
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Common REST API error codes

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

* The error codes listed in the following table may be returned by an operation on any of Microsoft Defender for Endpoint APIs.
* Note that in addition to the error code, every error response contains an error message which can help resolving the problem.
* Note that the message is a free text that can be changed.
* At the bottom of the page you can find response examples.

Error code |HTTP status code |Message 
:---|:---|:---
BadRequest | BadRequest (400) | General Bad Request error message.
ODataError | BadRequest (400) | Invalid OData URI query (the specific error is specified).
InvalidInput | BadRequest (400) | Invalid input {the invalid input}.
InvalidRequestBody | BadRequest (400) | Invalid request body.
InvalidHashValue | BadRequest (400) | Hash value {the invalid hash} is invalid.
InvalidDomainName | BadRequest (400) | Domain name {the invalid domain} is invalid.
InvalidIpAddress | BadRequest (400) | IP address {the invalid IP} is invalid.
InvalidUrl | BadRequest (400) | URL {the invalid URL} is invalid.
MaximumBatchSizeExceeded | BadRequest (400) | Maximum batch size exceeded. Received: {batch size received}, allowed: {batch size allowed}.
MissingRequiredParameter | BadRequest (400) | Parameter {the missing parameter} is missing.
OsPlatformNotSupported | BadRequest (400) | OS Platform {the client OS Platform} is not supported for this action.
ClientVersionNotSupported | BadRequest (400) | {The requested action} is supported on client version {supported client version} and above.
Unauthorized | Unauthorized (401) | Unauthorized (invalid or expired authorization header).
Forbidden | Forbidden (403) | Forbidden (valid token but insufficient permission for the action).
DisabledFeature | Forbidden (403) | Tenant feature is not enabled.
DisallowedOperation | Forbidden (403) | {the disallowed operation and the reason}.
NotFound | Not Found (404) | General Not Found error message.
ResourceNotFound | Not Found (404) | Resource {the requested resource} was not found.
InternalServerError | Internal Server Error (500) | (No error message, try retry the operation or contact us if it does not resolved)
TooManyRequests | Too Many Requests (429) | Response will represent reaching quota limit either by number of requests or by CPU.

## Body parameters are case-sensitive

The submitted body parameters are currently case-sensitive.
<br>If you experience an **InvalidRequestBody** or **MissingRequiredParameter** errors, it might be caused from a wrong parameter capital or lower-case letter.
<br>We recommend that you go to the requested API documentation page and check that the submitted parameters match the relevant example.

## Correlation request ID

Each error response contains a unique ID parameter for tracking.
<br>The property name of this parameter is "target".
<br>When contacting us about an error, attaching this ID will help find the root cause of the problem.

## Examples

```json
{
    "error": {
        "code": "ResourceNotFound",
        "message": "Machine 123123123 was not found",
        "target": "43f4cb08-8fac-4b65-9db1-745c2ae65f3a"
    }
}
```


```json
{
    "error": {
        "code": "InvalidRequestBody",
        "message": "Request body is incorrect",
        "target": "1fa66c0f-18bd-4133-b378-36d76f3a2ba0"
    }
}
```


