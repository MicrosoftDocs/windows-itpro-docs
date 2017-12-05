---
title: Policy CSP - Security
description: Policy CSP - Security
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - Security



<hr/>

<!--StartPolicies-->
## Security policies  

<dl>
  <dd>
    <a href="#security-allowaddprovisioningpackage">Security/AllowAddProvisioningPackage</a>
  </dd>
  <dd>
    <a href="#security-allowautomaticdeviceencryptionforazureadjoineddevices">Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices</a>
  </dd>
  <dd>
    <a href="#security-allowmanualrootcertificateinstallation">Security/AllowManualRootCertificateInstallation</a>
  </dd>
  <dd>
    <a href="#security-allowremoveprovisioningpackage">Security/AllowRemoveProvisioningPackage</a>
  </dd>
  <dd>
    <a href="#security-antitheftmode">Security/AntiTheftMode</a>
  </dd>
  <dd>
    <a href="#security-cleartpmifnotready">Security/ClearTPMIfNotReady</a>
  </dd>
  <dd>
    <a href="#security-preventautomaticdeviceencryptionforazureadjoineddevices">Security/PreventAutomaticDeviceEncryptionForAzureADJoinedDevices</a>
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
<!--StartPolicy-->
<a href="" id="security-allowaddprovisioningpackage"></a>**Security/AllowAddProvisioningPackage**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether to allow the runtime configuration agent to install provisioning packages.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="security-allowautomaticdeviceencryptionforazureadjoineddevices"></a>**Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartDescription-->
> [!NOTE]
> This policy has been deprecated in Windows 10, version 1607

<br>

> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Specifies whether to allow automatic device encryption during OOBE when the device is Azure AD joined.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="security-allowmanualrootcertificateinstallation"></a>**Security/AllowManualRootCertificateInstallation**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.


<p style="margin-left: 20px">Specifies whether the user is allowed to manually install root and intermediate CA certificates.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<p style="margin-left: 20px">Most restricted value is 0.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="security-allowremoveprovisioningpackage"></a>**Security/AllowRemoveProvisioningPackage**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether to allow the runtime configuration agent to remove provisioning packages.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Not allowed.
-   1 (default) – Allowed.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="security-antitheftmode"></a>**Security/AntiTheftMode**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile and not supported in Windows 10 for desktop.

 
<p style="margin-left: 20px">Allows or disallow Anti Theft Mode on the device.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – Don't allow Anti Theft Mode.
-   1 (default) – Anti Theft Mode will follow the default device configuration (region-dependent).

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="security-cleartpmifnotready"></a>**Security/ClearTPMIfNotReady**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.

Added in Windows 10, version 1709. Admin access is required. The prompt will appear on first admin logon after a reboot when the TPM is in a non-ready state that can be remediated with a TPM Clear. The prompt will have a description of what clearing the TPM does and that it requires a reboot. The user can dismiss it, but it will appear on next admin logon after restart.

The following list shows the supported values:

-   0 (default) – Will not force recovery from a non-ready TPM state.
-   1 – Will prompt to clear the TPM if the TPM is in a non-ready state (or reduced functionality) which can be remediated with a TPM Clear.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="security-preventautomaticdeviceencryptionforazureadjoineddevices"></a>**Security/PreventAutomaticDeviceEncryptionForAzureADJoinedDevices**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>1</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Added in Windows 10, version 1607 to replace the deprecated policy **Security/AllowAutomaticDeviceEncryptionForAzureADJoinedDevices**.

<p style="margin-left: 20px">Specifies whether to allow automatic device encryption during OOBE when the device is Azure AD joined.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Encryption enabled.
-   1 – Encryption disabled.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="security-requiredeviceencryption"></a>**Security/RequireDeviceEncryption**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 Mobile. In Windows 10 for desktop, you can query encryption status by using the [DeviceStatus CSP](devicestatus-csp.md) node **DeviceStatus/Compliance/EncryptionCompliance**.

<p style="margin-left: 20px">Allows enterprise to turn on internal storage encryption.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Encryption is not required.
-   1 – Encryption is required.

<p style="margin-left: 20px">Most restricted value is 1.

> [!IMPORTANT]
> If encryption has been enabled, it cannot be turned off by using this policy.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="security-requireprovisioningpackagesignature"></a>**Security/RequireProvisioningPackageSignature**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether provisioning packages must have a certificate signed by a device trusted authority.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not required.
-   1 – Required.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="security-requireretrievehealthcertificateonboot"></a>**Security/RequireRetrieveHealthCertificateOnBoot**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Specifies whether to retrieve and post TCG Boot logs, and get or cache an encrypted or signed Health Attestation Report from the Microsoft Health Attestation Service (HAS) when a device boots or reboots.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Not required.
-   1 – Required.

<p style="margin-left: 20px">Setting this policy to 1 (Required):

-   Determines whether a device is capable of Remote Device Health Attestation, by verifying if the device has TPM 2.0.
-   Improves the performance of the device by enabling the device to fetch and cache data to reduce the latency during Device Health Verification.

> [!NOTE]
> We recommend that this policy is set to Required after MDM enrollment.
 

<p style="margin-left: 20px">Most restricted value is 1.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

<!--StartEAS-->
## <a href="" id="eas"></a>Security policies that can be set using Exchange Active Sync (EAS)  

-   [Security/RequireDeviceEncryption](#security-requiredeviceencryption)  
<!--EndEAS-->

<!--StartHoloLens-->
## <a href="" id="hololenspolicies"></a>Security policies supported by Windows Holographic for Business  

-   [Security/RequireDeviceEncryption](#security-requiredeviceencryption)  
<!--EndHoloLens-->

<!--StartIoTCore-->
## <a href="" id="iotcore"></a>Security policies supported by IoT Core  

-   [Security/AllowAddProvisioningPackage](#security-allowaddprovisioningpackage)  
-   [Security/AllowRemoveProvisioningPackage](#security-allowremoveprovisioningpackage)  
-   [Security/RequireDeviceEncryption](#security-requiredeviceencryption)  
-   [Security/RequireProvisioningPackageSignature](#security-requireprovisioningpackagesignature)  
<!--EndIoTCore-->

<!--StartSurfaceHub-->
## <a href="" id="surfacehubpolicies"></a>Security policies supported by Microsoft Surface Hub  

-   [Security/RequireProvisioningPackageSignature](#security-requireprovisioningpackagesignature)  
-   [Security/RequireRetrieveHealthCertificateOnBoot](#security-requireretrievehealthcertificateonboot)  
<!--EndSurfaceHub-->

