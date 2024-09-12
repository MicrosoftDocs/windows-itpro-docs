---
title: Windows declared configuration discovery
description: Learn more about configuring discovery for Windows declared configuration enrollment.
ms.date: 09/12/2024
ms.topic: how-to
---

# Declared configuration discovery

Windows Declared configuration (WinDC) discovery uses a dedicated JSON schema to query enrollment details from the [discovery service endpoint (DS)](/openspecs/windows_protocols/ms-mde2/60deaa44-52df-4a47-a844-f5b42037f7d3#gt_8d76dac8-122a-452b-8c97-b25af916f19b). This process involves sending HTTP requests with specific headers and a JSON body containing details such as user domain, tenant ID, and OS version. The DS responds with the necessary enrollment service URLs and authentication policies based on the enrollment type (Microsoft Entra joined or registered devices).

This article outlines the schema structure for the HTTP request and response bodies, and provides examples to guide the implementation.

## Schema structure

### HTTP request headers

| Header                           | Required | Description                       |
|----------------------------------|----------|-----------------------------------|
| `MS-CV: %s`                      | No       | Correlation vector for enrollment |
| `client-request-id: %s`          | No       | Request ID                        |
| `Content-Type: application/json` | Yes      | HTTP Content-Type                 |

### HTTP request body (JSON)

| Field | Required | Description |
|--|--|--|
| `userDomain` | No | Domain name of the enrolled account |
| `upn` | No | User Principal Name (UPN) of the enrolled account |
| `tenantId` | No | Tenant ID of the enrolled account |
| `emmDeviceId` | No | Enterprise mobility management (EMM) device ID of the enrolled account |
| `enrollmentType` | Entra joined: No <br>Entra registered: Yes | Enrollment type of the enrolled account. <br><br>Supported Values: <br>- `Device`: Indicates the parent enrollment type is Entra joined (DS response should specify "AuthPolicy": "Federated"). <br>- `User`: Indicates parent enrollment type is Entra registered (DS response should specify "AuthPolicy": "Certificate"). <br>- Legacy case (Entra joined only): If the `enrollmentType` parameter isn't included in the request body, the device should be treated as Entra joined. |
| `osVersion` | Yes | OS version on the device. The DS can use the `osVersion` to determine if the client platform supports WinDC enrollment. Review [supported platforms](declared-configuration.md#supported-platforms) for details. |

### HTTP DS response body (JSON)

| Field                        | Required | Description                                                                                                                                |
|------------------------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------|
| `EnrollmentServiceUrl`       | Yes      | URL of the WinDC enrollment service                                                                                       |
| `EnrollmentVersion`          | No       | Enrollment version                                                                                                                         |
| `EnrollmentPolicyServiceUrl` | Yes      | Enrollment Policy Service URL                                                                                                              |
| `AuthenticationServiceUrl`   | Yes      | Authentication Service URL                                                                                                                 |
| `ManagementResource`         | No       | Management Resource                                                                                                                        |
| `TouUrl`                     | No       | Terms of use URL                                                                                                                           |
| `AuthPolicy`                 | Yes      | Authentication policy. Supported values: <br>- `Federated` (required for Entra joined) <br>- `Certificate` (required for Entra registered) |
| `errorCode`                  | No       | Error code                                                                                                                                 |
| `message`                    | No       | Status message                                                                                                                             |

## Examples

### Discovery request

**Headers**

`Content-Type: application/json`

**Body**

1. Single template approach: Client sends the **UPN** value in the initial request, along with the **tenantId** parameter.

    1. Microsoft Entra joined:

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

    1. Microsoft Entra registered:

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

    1. Microsoft Entra joined:

        ```json
        {
            "userDomain" : "contoso.com",
            "emmDeviceId" : "00000000-0000-0000-0000-000000000000",
            "enrollmentType" : "Device",
            "osVersion" : "10.0.00000.0"
        }
        ```

    1. Microsoft Entra registered:

        ```json
        {
            "userDomain" : "contoso.com",
            "emmDeviceId" : "00000000-0000-0000-0000-000000000000",
            "enrollmentType" : "User",
            "osVersion" : "10.0.00000.0"
        }
        ```

1. UPN requested by the server (legacy format). Review [error handling](#error-handling) for details on how the server can request UPN data if it isn't provided in the initial request.

    1. Microsoft Entra joined:

        ```json
        {
            "upn" : "johndoe@contoso.com",
            "emmDeviceId" : "00000000-0000-0000-0000-000000000000",
            "enrollmentType" : "Device",
            "osVersion" : "10.0.00000.0"
        }
        ```

    1. Microsoft Entra registered:

        ```json
        {
            "upn" : "johndoe@contoso.com",
            "emmDeviceId" : "00000000-0000-0000-0000-000000000000",
            "enrollmentType" : "User",
            "osVersion" : "10.0.00000.0"
        }
        ```

### Discovery response

**Headers**

`Content-Type: application/json`

**Body**

1. Microsoft Entra joined (requires `"AuthPolicy": "Federated"`):

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

1. Microsoft Entra registered (requires `"AuthPolicy": "Certificate"`):

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

WinDC enrollment requires different authentication mechanisms for Microsoft Entra joined and registered devices. The WinDC DS must integrate with the authentication model by specifying the appropriate `AuthPolicy` value in the discovery response, based on the `enrollmentType` property of the request.

- **Microsoft Entra joined devices** use **Federated** authentication (Entra device token).
- **Microsoft Entra registered devices** use **Certificate** authentication (MDM certificate provisioned for the parent enrollment).

#### Rules

- **For Microsoft Entra joined devices**:
    - **Discovery request**: `"enrollmentType": "Device"`
    - **Discovery response**: `"AuthPolicy": "Federated"`
    - **Authentication**: The client uses the Entra device token to authenticate with the WinDC enrollment server.

- **For legacy cases (where `enrollmentType` value is empty)**:
    - **Discovery request**: `"enrollmentType": ""`
    - **Discovery response**: `"AuthPolicy": "Federated"`
    - **Authentication**: The client uses the Entra device token to authenticate with the WinDC enrollment server.

- **For Microsoft Entra registered devices**:
    - **Discovery request**: `"enrollmentType": "User"`
    - **Discovery response**: `"AuthPolicy": "Certificate"`
    - **Authentication**: The client uses the MDM certificate from the parent enrollment to authenticate with the WinDC enrollment server.

## Error handling

- **UPNRequired**: If no UPN value is provided in the discovery request, the DS can set the `errorCode` to **UPNRequired** in the response to trigger the client to retry the request with a UPN value, if available.
- **WINHTTP_QUERY_RETRY_AFTER**: The server can set this flag to configure the client request to retry after a specified delay. This flag is useful for handling timeout or throttling scenarios.