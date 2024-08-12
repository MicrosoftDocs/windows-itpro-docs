---
title: Declared configuration discovery
description: Learn more about configuring discovery for declared configuration enrollment.
ms.date: 08/12/2024
ms.topic: how-to
---

# Declared configuration discovery

Declared configuration discovery uses a dedicated JSON schema to query enrollment details from the [discovery service endpoint (DS)](/openspecs/windows_protocols/ms-mde2/60deaa44-52df-4a47-a844-f5b42037f7d3#gt_8d76dac8-122a-452b-8c97-b25af916f19b).

## Supported platforms

Declared Configuration enrollment for [Microsoft Entra joined devices](/entra/identity/devices/concept-directory-join) is supported for all versions of Windows 10/11.

Declared Configuration enrollment for [Microsoft Entra registered devices](/entra/identity/devices/concept-device-registration) is supported for Windows 10/11 with the following updates:

- Windows 11, version 24H2 with [KB5040529](https://support.microsoft.com/help/5040529) (OS Build 26100.1301)
- Windows 11, version 23H2 with [KB5040527](https://support.microsoft.com/help/5040527) (OS Build 22631.3958)
- Windows 11, version 22H2 with [KB5040527](https://support.microsoft.com/help/5040527) (OS Build 22621.3958)
- Windows 10, version 22H2 with [KB5040525](https://support.microsoft.com/help/5040525) (OS Build 19045.4717)

## Schema structure

### HTTP request headers

**Correlation Headers**

- `"(MS-CV: %s)"`
    - Required: false
    - Description: Correlation vector for enrollment

- `"(client-request-id: %s)"`
    - Required: false
    - Description: Request ID

**Content-Type Header**

- `"Content-Type: application/json"`
    - Required: true
    - Description: HTTP Content-Type

### HTTP request body (JSON)

- `"userDomain" : "%s"`
    - Required: false
    - Description: Domain name of the enrolled account

 - `"upn" : "%s"`
     - Required: false
     - Description: User Principal Name (UPN) of the enrolled account

 - `"tenantId" : "%s"`
    - Required: false
    - Description: Tenant ID of the enrolled account

 - `"emmDeviceId" : "%s"`
     - Required: false
     - Description: Enterprise mobility management (EMM) device ID of the enrolled account

 - `"enrollmentType" : "%s"`
    - Required:
        - AADJ: false
        - WPJ: true
    - Description: Enrollment type of the enrolled account
    - Supported Values:
        - "Device": Indicates the parent enrollment type is AADJ (DS response should specify "AuthPolicy": "Federated").
        - "User": Indicates parent enrollment type is WPJ (DS response should specify "AuthPolicy": "Certificate")
        - Legacy case (AADJ only): If the "enrollmentType" parameter isn't included in the request body, the device should be treated as AADJ.

- `"osVersion" : "%d.%d.%d.%d"`
    - Required: true
    - Description: OS version on the device. The DS can use the `osVersion` to determine if the client platform supports Declared Configuration enrollment. Review [Supported platforms](#supported-platforms) for details.

### HTTP DS response body (JSON)

- `"EnrollmentServiceUrl" : "%s"`
    - Required: true
    - Description: URL of the Declared Configuration enrollment service

- `"EnrollmentVersion" : "%s"`
    - Required: false
    - Description: Enrollment version

- `"EnrollmentPolicyServiceUrl" : "%s"`
    - Required: true
    - Description: Enrollment Policy Service URL

- `"AuthenticationServiceUrl" : "%s"`
    - Required: true
    - Description: Authentication Service URL

- `"ManagementResource" : "%s"`
    - Required: false
    - Description: Management Resource

- `"TouUrl" : "%s"`
    - Required: false
    - Description: Terms of use URL

- `"AuthPolicy" : "%s"`
    - Required: true
    - Description: Authentication policy
    - Supported values: "Federated" (required for AADJ), "Certificate" (required for WPJ)

- `"errorCode" : "%s"`
    - Required: false
    - Description: Status code. An errorCode value of **UPNRequired** triggers the client to send a subsequent request with a value for the UPN property, if available.

- `"message" : "%s"`
    - Required: false
    - Description: Status message

## Examples

### Declared Configuration discovery request

**Headers**

`Content-Type: application/json`

**Body**

1. Single template approach: Client sends the **UPN** value in the initial request, along with the **tenantId** parameter.

    1. AADJ

        ```json
        {
            "userDomain" : "contoso.com",
            "upn" : "johndoe@contoso.com",
            "tenantId" : "00000000-0000-0000-0000-000000000000",
            "emmDeviceId" : "00000000-0000-0000-0000-000000000000",
            "enrollmentType" : "Device",
            "osVersion" : "10.0.00000.0"
        }
        ```

    1. WPJ

        ```json
        {

            "userDomain" : "contoso.com",
            "upn" : "johndoe@contoso.com",
            "tenantId" : "00000000-0000-0000-0000-000000000000",
            "emmDeviceId" : "00000000-0000-0000-0000-000000000000",
            "enrollmentType" : "Device",
            "osVersion" : "10.0.00000.0"
        }
        ```

1. No UPN (legacy)

    1. AADJ

        ```json
        {
            "userDomain" : "contoso.com",
            "emmDeviceId" : "00000000-0000-0000-0000-000000000000",
            "enrollmentType" : "Device",
            "osVersion" : "10.0.00000.0"
        }
        ```

    1. WPJ

        ```json
        {
            "userDomain" : "contoso.com",
            "emmDeviceId" : "00000000-0000-0000-0000-000000000000",
            "enrollmentType" : "User",
            "osVersion" : "10.0.00000.0"
        }
        ```

1. UPN requested by the server (legacy format). Review [error handling](#error-handling) for details on how the server can request UPN data if it isn't provided in the initial request.

    1. AADJ

        ```json
        {
            "upn" : "johndoe@contoso.com",
            "emmDeviceId" : "00000000-0000-0000-0000-000000000000",
            "enrollmentType" : "Device",
            "osVersion" : "10.0.00000.0"
        }
        ```

    1. WPJ

        ```json
        {
            "upn" : "johndoe@contoso.com",
            "emmDeviceId" : "00000000-0000-0000-0000-000000000000",
            "enrollmentType" : "WPJ",
            "osVersion" : "10.0.00000.0"
        }
        ```

### Declared Configuration discovery response

**Headers**

`Content-Type: application/json`

**Body**

1. Microsoft Entra joined devices (requires "AuthPolicy": "Federated")

    ```json
    {
        "EnrollmentServiceUrl" : "https://manage.contoso.com/Enrollment/Discovery",
        "EnrollmentPolicyServiceUrl" : "https://manage.contoso.com/Enrollment/GetPolicies",
        "AuthenticationServiceUrl" : "https://manage.contoso.com/Enrollment/AuthService",
        "AuthPolicy" : "Federated",
        "ManagementResource":"https://manage.contoso.com",
        "TouUrl" : "https://manage.contoso.com/Enrollment/tou.aspx"
    }
    ```

1. Microsoft Entra registered devices (requires "AuthPolicy": "Certificate")

    ```json
    {
        "EnrollmentServiceUrl" : "https://manage.contoso.com/Enrollment/Discovery",
        "EnrollmentPolicyServiceUrl" : "https://manage.contoso.com/Enrollment/GetPolicies",
        "AuthenticationServiceUrl" : "https://manage.contoso.com/Enrollment/AuthService",
        "AuthPolicy" : "Certificate",
        "ManagementResource":"https://manage.contoso.com",
        "TouUrl" : "https://manage.contoso.com/Enrollment/tou.aspx"
    }
    ```

### Authentication

Declared Configuration enrollment requires different authentication mechanisms for Microsoft Entra joined and registered devices.

- Microsoft Entra joined devices use 'Federated' authentication (Entra device token)
- Microsoft Entra registered devices use 'Certificate' authentication (MDM certificate provisioned for the parent enrollment).

The Declared Configuration DS must integrate with the authentication model by specifying the appropriate `authPolicy` value in the discovery response, based on the `enrollmentType` property of the request.

Rules are:

- [Discovery request] `"enrollmentType": "Device"` (Microsoft Entra joined devices)
    - [Discovery response] `"AuthPolicy": "Federated"`
    - -> The client uses the Entra device token to authenticate with the Declared Configuration enrollment server.

- [Discovery request (legacy case where enrollmentType value is empty)] `"enrollmentType": ""` (Microsoft Entra joined devices)
    - [Discovery response] `"AuthPolicy": "Federated"`
    - -> The client uses the Entra device token to authenticate with the Declared Configuration enrollment server.

- [Discovery request] `"enrollmentType": "Device"` (Microsoft Entra registered devices)
    - [Discovery response] `"AuthPolicy": "Certificate"`
    - -> The client uses the MDM certificate from the parent enrollment to authenticate with the Declared Configuration enrollment server.

## Error handling

#### UPN required

If no UPN value is provided in the discovery request, the DS can set the errorCode property in the response as **UPNRequired** to trigger the client to retry the request with a UPN value provided.

#### Timeout/throttling:

The server can set the flag `WINHTTP_QUERY_RETRY_AFTER` to configure the client request to retry after a specified delay.