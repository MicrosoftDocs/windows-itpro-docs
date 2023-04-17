---
title: Provisioning CSP
description: The Provisioning configuration service provider is used for bulk user enrollment to an MDM service.
ms.reviewer:
manager: aaroncz
ms.author: vinpa
ms.topic: reference
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
---

# Provisioning CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The Provisioning configuration service provider is used for bulk user enrollment to an MDM service.

> [!NOTE]
> Bulk enrollment does not work when two-factor authentication is enabled.

For bulk enrollment step-by-step guide, see [Bulk enrollment](../bulk-enrollment-using-windows-provisioning-tool.md).

The following shows the Provisioning configuration service provider in tree format.

```
./Vendor/MSFT/ProvisioningCommands
ProvisioningCommands
----DeviceContext
--------CommandSet
------------Default
----------------CommandLine
----PrimaryContext
--------CommandSet
------------CommandName
----------------CommandLine
----------------ReturnCodeSuccess
----------------ReturnCodeRestart
----------------RestartRequired
----------------ContinueInstall
```

<a href="" id="--vendor-msft"></a>**./Vendor/MSFT/ProvisioningCommands**
Root node for Provisioning CSP.

<a href="" id="provisioning-enrollments"></a>**Provisioning/Enrollments**
Node for defining bulk enrollment of users into an MDM service.

<a href="" id="provisioning-enrollments-upn"></a>**Provisioning/Enrollments/_UPN_**
Unique identifier for the enrollment. For bulk enrollment, this must be a service account that is allowed to enroll multiple users. For example, "generic-device@contoso.com".

<a href="" id="provisioning-enrollments-upn-discoveryservicefullurl"></a>**Provisioning/Enrollments/*UPN*/DiscoveryServiceFullURL**
The full URL for the discovery service.

<a href="" id="provisioning-enrollments-upn-secret"></a>**Provisioning/Enrollments/*UPN*/Secret**
This information is dependent on the AuthPolicy being used. Possible values:

- Password string for on-premises authentication enrollment
- Federated security token for federated enrollment
- Certificate thumbprint for certificated based enrollment

<a href="" id="provisioning-enrollments-upn-authpolicy"></a>**Provisioning/Enrollments/*UPN*/AuthPolicy**
Specifies the authentication policy used by the MDM service. Valid values:

- OnPremise
- Certificate

<a href="" id="provisioning-enrollments-upn-policyservicefullurl"></a>**Provisioning/Enrollments/*UPN*/PolicyServiceFullURL**
Specifies the policy service URL.

<a href="" id="provisioning-enrollments-upn-enrollmentservicefullurl"></a>**Provisioning/Enrollments/*UPN*/EnrollmentServiceFullURL**
Specifies the enrollment service URL.
