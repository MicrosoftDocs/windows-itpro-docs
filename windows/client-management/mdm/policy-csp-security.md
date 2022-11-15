---
title: Policy CSP - Security
description: Learn how the Policy CSP - Security setting can specify whether to allow the runtime configuration agent to install provisioning packages.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - Security

<hr/>

<!--Policies-->
## Security policies

<dl>
  <dd>
    <a href="#security-allowaddprovisioningpackage">Security/AllowAddProvisioningPackage</a>
  </dd>
  <dd>
    <a href="#security-allowautomaticdeviceencryptionforazureadjoineddevices">Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices</a>
  </dd>
  <dd>
    <a href="#security-allowremoveprovisioningpackage">Security/AllowRemoveProvisioningPackage</a>
  </dd>
  <dd>
    <a href="#security-cleartpmifnotready">Security/ClearTPMIfNotReady</a>
  </dd>
  <dd>
    <a href="#security-configurewindowspasswords">Security/ConfigureWindowsPasswords</a>
  </dd>
  <dd>
    <a href="#security-preventautomaticdeviceencryptionforazureadjoineddevices">Security/PreventAutomaticDeviceEncryptionForAzureADJoinedDevices</a>
  </dd>
  <dd>
    <a href="#security-recoveryenvironmentauthentication">Security/RecoveryEnvironmentAuthentication</a>
  </dd>
  <dd>
    <a href="#security-requiredeviceencryption">Security/RequireDeviceEncryption</a>
  </dd>
  <dd>
    <a href="#security-requireprovisioningpackagesignature">Security/RequireProvisioningPackageSignature</a>
  </dd>
  <dd>
    <a href="#security-requireretrievehealthcertificateonboot">Security/RequireRetrieveHealthCertificateOnBoot</a>
  </dd>
</dl>

<hr/>

<!--Policy-->
<a href="" id="security-allowaddprovisioningpackage"></a>**Security/AllowAddProvisioningPackage**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether to allow the runtime configuration agent to install provisioning packages.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="security-allowautomaticdeviceencryptionforazureadjoineddevices"></a>**Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices**

<!--Description-->
> [!NOTE]
>
> - This policy is deprecated in Windows 10, version 1607.

Specifies whether to allow automatic [device encryption](/windows/security/information-protection/bitlocker/bitlocker-device-encryption-overview-windows-10#bitlocker-device-encryption) during OOBE when the device is Azure AD joined.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="security-allowremoveprovisioningpackage"></a>**Security/AllowRemoveProvisioningPackage**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether to allow the runtime configuration agent to remove provisioning packages.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="security-cleartpmifnotready"></a>**Security/ClearTPMIfNotReady**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|||
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

Admin access is required. The prompt will appear on first admin logon after a reboot, when the TPM is in a non-ready state that can be remediated with a TPM Clear. The prompt will have a description of what clearing the TPM does and that it requires a reboot. The user can dismiss it, but it will appear on next admin logon after restart.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure the system to clear the TPM if it is not in a ready state.*
-   GP name: *ClearTPMIfNotReady_Name*
-   GP path: *System/Trusted Platform Module Services*
-   GP ADMX file name: *TPM.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Won't force recovery from a non-ready TPM state.
-   1 – Will prompt to clear the TPM, if the TPM is in a non-ready state (or reduced functionality) which can be remediated with a TPM Clear.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="security-configurewindowspasswords"></a>**Security/ConfigureWindowsPasswords**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Configures the use of passwords for Windows features.

> [!Note]
> This policy is only supported in Windows 10 S.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-  0 -Disallow passwords (Asymmetric credentials will be promoted to replace passwords on Windows features).
-  1- Allow passwords (Passwords continue to be allowed to be used for Windows features).
-  2- Default (Feature defaults as per SKU and device capabilities. Windows 10 S devices will exhibit "Disallow passwords" default, and all other devices will default to "Allow passwords").

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="security-preventautomaticdeviceencryptionforazureadjoineddevices"></a>**Security/PreventAutomaticDeviceEncryptionForAzureADJoinedDevices**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->

Added in Windows 10, version 1607 to replace the deprecated policy **Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices**.

Specifies whether to allow automatic [device encryption](/windows/security/information-protection/bitlocker/bitlocker-device-encryption-overview-windows-10#bitlocker-device-encryption) during OOBE when the device is Azure AD joined.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Encryption enabled.
-   1 – Encryption disabled.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="security-recoveryenvironmentauthentication"></a>**Security/RecoveryEnvironmentAuthentication**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy controls the Admin Authentication requirement in RecoveryEnvironment.

Supported values:

-  0 - Default: Keep using default(current) behavior.
-  1 - RequireAuthentication: Admin Authentication is always required for components in RecoveryEnvironment.
-  2 - NoRequireAuthentication: Admin Authentication isn't required for components in RecoveryEnvironment.

<!--/Description-->
<!--SupportedValues-->

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->
**Validation procedure**

The validation requires a check whether Refresh ("Keep my files") and Reset ("Remove everything") requires admin authentication in WinRE.
The process of starting Push Button Reset (PBR) in WinRE:

1. Open a cmd as Administrator, run command "reagentc /boottore" and restart the OS to boot to WinRE.
1. OS should boot to the blue screen of WinRE UI, go through TroubleShoot -> Reset this PC, it should show two options: "Keep my files" and "Remove everything".

If the MDM policy is set to "Default" (0) or doesn't exist, the admin authentication flow should work as default behavior:

1. Start PBR in WinRE, choose "Keep my files", it should pop up admin authentication.
1. Click "<-" (right arrow) button and choose "Remove everything", it shouldn't pop up admin authentication and just go to PBR options.

If the MDM policy is set to "RequireAuthentication" (1)

1. Start PBR in WinRE, choose "Keep my files", it should pop up admin authentication.
1. Click "<-" (right arrow) button and choose "Remove everything", it should also pop up admin authentication.

If the MDM policy is set to "NoRequireAuthentication" (2)

1. Start PBR in WinRE, choose "Keep my files", it shouldn't pop up admin authentication.
1. Go through PBR options and click "cancel" at final confirmation page, wait unit the UI is back.
1. Click "TroubleShoot" -> "Reset this PC" again, choose "Remove everything", it shouldn't pop up admin authentication neither.

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="security-requiredeviceencryption"></a>**Security/RequireDeviceEncryption**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Allows enterprise to turn on internal storage encryption.

Most restricted value is 1.

> [!IMPORTANT]
> If encryption has been enabled, it cannot be turned off by using this policy.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Encryption isn't required.
-   1 – Encryption is required.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="security-requireprovisioningpackagesignature"></a>**Security/RequireProvisioningPackageSignature**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether provisioning packages must have a certificate signed by a device trusted authority.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Not required.
-   1 – Required.

<!--/SupportedValues-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="security-requireretrievehealthcertificateonboot"></a>**Security/RequireRetrieveHealthCertificateOnBoot**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Specifies whether to retrieve and post TCG Boot logs, and get or cache an encrypted or signed Health Attestation Report from the Microsoft Health Attestation Service (HAS), when a device boots or reboots.

Setting this policy to 1 (Required):

-   Determines whether a device is capable of Remote Device Health Attestation, by verifying if the device has TPM 2.0.
-   Improves the performance of the device by enabling the device to fetch and cache data to reduce the latency during Device Health Verification.

> [!NOTE]
> We recommend that this policy is set to Required after MDM enrollment.

Most restricted value is 1.

<!--/Description-->
<!--SupportedValues-->
The following list shows the supported values:

-   0 (default) – Not required.
-   1 – Required.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>


<!--/Policies-->

## Related topics

[Policy configuration service provider](policy-configuration-service-provider.md)