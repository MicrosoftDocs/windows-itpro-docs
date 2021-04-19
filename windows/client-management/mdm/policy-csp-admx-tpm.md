---
title: Policy CSP - ADMX_TPM
description: Policy CSP - ADMX_TPM
ms.author: dansimp
ms.localizationpriority: medium
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 09/25/2020
ms.reviewer: 
manager: dansimp
---

# Policy CSP - ADMX_TPM
> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.

<hr/>

<!--Policies-->
## ADMX_TPM policies  

<dl>
  <dd>
    <a href="#admx-tpm-blockedcommandslist-name">ADMX_TPM/BlockedCommandsList_Name</a>
  </dd>
  <dd>
    <a href="#admx-tpm-cleartpmifnotready-name">ADMX_TPM/ClearTPMIfNotReady_Name</a>
  </dd>
  <dd>
    <a href="#admx-tpm-ignoredefaultlist-name">ADMX_TPM/IgnoreDefaultList_Name</a>
  </dd>
  <dd>
    <a href="#admx-tpm-ignorelocallist-name">ADMX_TPM/IgnoreLocalList_Name</a>
  </dd>
  <dd>
    <a href="#admx-tpm-osmanagedauth-name">ADMX_TPM/OSManagedAuth_Name</a>
  </dd>
  <dd>
    <a href="#admx-tpm-optintodsha-name">ADMX_TPM/OptIntoDSHA_Name</a>
  </dd>
  <dd>
    <a href="#admx-tpm-standarduserauthorizationfailureduration-name">ADMX_TPM/StandardUserAuthorizationFailureDuration_Name</a>
  </dd>
  <dd>
    <a href="#admx-tpm-standarduserauthorizationfailureindividualthreshold-name">ADMX_TPM/StandardUserAuthorizationFailureIndividualThreshold_Name</a>
  </dd>
  <dd>
    <a href="#admx-tpm-standarduserauthorizationfailuretotalthreshold-name">ADMX_TPM/StandardUserAuthorizationFailureTotalThreshold_Name</a>
  </dd>
  <dd>
    <a href="#admx-tpm-uselegacydap-name">ADMX_TPM/UseLegacyDAP_Name</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="admx-tpm-blockedcommandslist-name"></a>**ADMX_TPM/BlockedCommandsList_Name**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to manage the Group Policy list of Trusted Platform Module (TPM) commands blocked by Windows.

If you enable this policy setting, Windows will block the specified commands from being sent to the TPM on the computer. TPM commands are referenced by a command number. For example, command number 129 is TPM_OwnerReadInternalPub, and command number 170 is TPM_FieldUpgrade. To find the command number associated with each TPM command with TPM 1.2, run "tpm.msc" and navigate to the "Command Management" section.

If you disable or do not configure this policy setting, only those TPM commands specified through the default or local lists may be blocked by Windows. The default list of blocked TPM commands is pre-configured by Windows. You can view the default list by running "tpm.msc", navigating to the "Command Management" section, and making visible the "On Default Block List" column. The local list of blocked TPM commands is configured outside of Group Policy by running "tpm.msc" or through scripting against the Win32_Tpm interface. See related policy settings to enforce or ignore the default and local lists of blocked TPM commands.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure the list of blocked TPM commands*
-   GP name: *BlockedCommandsList_Name*
-   GP path: *System\Trusted Platform Module Services*
-   GP ADMX file name: *TPM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-tpm-cleartpmifnotready-name"></a>**ADMX_TPM/ClearTPMIfNotReady_Name**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures the system to prompt the user to clear the TPM if the TPM is detected to be in any state other than Ready. This policy will take effect only if the system’s TPM is in a state other than Ready, including if the TPM is “Ready, with reduced functionality”. The prompt to clear the TPM will start occurring after the next reboot, upon user login only if the logged in user is part of the Administrators group for the system. The prompt can be dismissed, but will reappear after every reboot and login until the policy is disabled or until the TPM is in a Ready state.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure the system to clear the TPM if it is not in a ready state.*
-   GP name: *ClearTPMIfNotReady_Name*
-   GP path: *System\Trusted Platform Module Services*
-   GP ADMX file name: *TPM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-tpm-ignoredefaultlist-name"></a>**ADMX_TPM/IgnoreDefaultList_Name**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to enforce or ignore the computer's default list of blocked Trusted Platform Module (TPM) commands.

If you enable this policy setting, Windows will ignore the computer's default list of blocked TPM commands and will only block those TPM commands specified by Group Policy or the local list.

The default list of blocked TPM commands is pre-configured by Windows. You can view the default list by running "tpm.msc", navigating to the "Command Management" section, and making visible the "On Default Block List" column. The local list of blocked TPM commands is configured outside of Group Policy by running "tpm.msc" or through scripting against the Win32_Tpm interface. See the related policy setting to configure the Group Policy list of blocked TPM commands.

If you disable or do not configure this policy setting, Windows will block the TPM commands in the default list, in addition to commands in the Group Policy and local lists of blocked TPM commands. 

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Ignore the default list of blocked TPM commands*
-   GP name: *IgnoreDefaultList_Name*
-   GP path: *System\Trusted Platform Module Services*
-   GP ADMX file name: *TPM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-tpm-ignorelocallist-name"></a>**ADMX_TPM/IgnoreLocalList_Name**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to enforce or ignore the computer's local list of blocked Trusted Platform Module (TPM) commands.

If you enable this policy setting, Windows will ignore the computer's local list of blocked TPM commands and will only block those TPM commands specified by Group Policy or the default list.

The local list of blocked TPM commands is configured outside of Group Policy by running "tpm.msc" or through scripting against the Win32_Tpm interface. The default list of blocked TPM commands is pre-configured by Windows. See the related policy setting to configure the Group Policy list of blocked TPM commands.

If you disable or do not configure this policy setting, Windows will block the TPM commands found in the local list, in addition to commands in the Group Policy and default lists of blocked TPM commands.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Ignore the local list of blocked TPM commands*
-   GP name: *IgnoreLocalList_Name*
-   GP path: *System\Trusted Platform Module Services*
-   GP ADMX file name: *TPM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-tpm-osmanagedauth-name"></a>**ADMX_TPM/OSManagedAuth_Name**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures how much of the TPM owner authorization information is stored in the registry of the local computer. Depending on the amount of TPM owner authorization information stored locally, the operating system and TPM-based applications can perform certain TPM actions which require TPM owner authorization without requiring the user to enter the TPM owner password.

You can choose to have the operating system store either the full TPM owner authorization value, the TPM administrative delegation blob plus the TPM user delegation blob, or none.

If you enable this policy setting, Windows will store the TPM owner authorization in the registry of the local computer according to the operating system managed TPM authentication setting you choose.

Choose the operating system managed TPM authentication setting of "Full" to store the full TPM owner authorization, the TPM administrative delegation blob and the TPM user delegation blob in the local registry. This setting allows use of the TPM without requiring remote or external storage of the TPM owner authorization value. This setting is appropriate for scenarios which do not depend on preventing reset of the TPM anti-hammering logic or changing the TPM owner authorization value. Some TPM-based applications may require this setting be changed before features which depend on the TPM anti-hammering logic can be used.

Choose the operating system managed TPM authentication setting of "Delegated" to store only the TPM administrative delegation blob and the TPM user delegation blob in the local registry. This setting is appropriate for use with TPM-based applications that depend on the TPM anti-hammering logic.

Choose the operating system managed TPM authentication setting of "None" for compatibility with previous operating systems and applications or for use with scenarios that require TPM owner authorization not be stored locally. Using this setting might cause issues with some TPM-based applications.

> [!NOTE]
> If the operating system managed TPM authentication setting is changed from "Full" to "Delegated", the full TPM owner authorization value will be regenerated and any copies of the original TPM owner authorization value will be invalid.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure the level of TPM owner authorization information available to the operating system*
-   GP name: *OSManagedAuth_Name*
-   GP path: *System\Trusted Platform Module Services*
-   GP ADMX file name: *TPM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-tpm-optintodsha-name"></a>**ADMX_TPM/OptIntoDSHA_Name**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This group policy enables Device Health Attestation reporting (DHA-report) on supported devices. It enables supported devices to send Device Health Attestation related information (device boot logs, PCR values, TPM certificate, etc.) to Device Health Attestation Service (DHA-Service) every time a device starts. Device Health Attestation Service validates the security state and health of the devices, and makes the findings accessible to enterprise administrators via a cloud based reporting portal. This policy is independent of DHA reports that are initiated by device manageability solutions (like MDM or SCCM), and will not interfere with their workflows.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Enable Device Health Attestation Monitoring and Reporting*
-   GP name: *OptIntoDSHA_Name*
-   GP path: *System\Device Health Attestation Service*
-   GP ADMX file name: *TPM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-tpm-standarduserauthorizationfailureduration-name"></a>**ADMX_TPM/StandardUserAuthorizationFailureDuration_Name**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to manage the duration in minutes for counting standard user authorization failures for Trusted Platform Module (TPM) commands requiring authorization. If the number of TPM commands with an authorization failure within the duration equals a threshold, a standard user is prevented from sending commands requiring authorization to the TPM.

This setting helps administrators prevent the TPM hardware from entering a lockout mode because it slows the speed standard users can send commands requiring authorization to the TPM.

An authorization failure occurs each time a standard user sends a command to the TPM and receives an error response indicating an authorization failure occurred. Authorization failures older than this duration are ignored.

For each standard user two thresholds apply. Exceeding either threshold will prevent the standard user from sending a command to the TPM that requires authorization.

The Standard User Lockout Threshold Individual value is the maximum number of authorization failures each standard user may have before the user is not allowed to send commands requiring authorization to the TPM.

The Standard User Lockout Total Threshold value is the maximum total number of authorization failures all standard users may have before all standard users are not allowed to send commands requiring authorization to the TPM.

The TPM is designed to protect itself against password guessing attacks by entering a hardware lockout mode when it receives too many commands with an incorrect authorization value. When the TPM enters a lockout mode it is global for all users including administrators and Windows features like BitLocker Drive Encryption. The number of authorization failures a TPM allows and how long it stays locked out vary by TPM manufacturer. Some TPMs may enter lockout mode for successively longer periods of time with fewer authorization failures depending on past failures. Some TPMs may require a system restart to exit the lockout mode. Other TPMs may require the system to be on so enough clock cycles elapse before the TPM exits the lockout mode.

An administrator with the TPM owner password may fully reset the TPM's hardware lockout logic using the TPM Management Console (tpm.msc). Each time an administrator resets the TPM's hardware lockout logic all prior standard user TPM authorization failures are ignored; allowing standard users to use the TPM normally again immediately.

If this value is not configured, a default value of 480 minutes (8 hours) is used.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Standard User Lockout Duration*
-   GP name: *StandardUserAuthorizationFailureDuration_Name*
-   GP path: *System\Trusted Platform Module Services*
-   GP ADMX file name: *TPM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-tpm-standarduserauthorizationfailureindividualthreshold-name"></a>**ADMX_TPM/StandardUserAuthorizationFailureIndividualThreshold_Name**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to manage the maximum number of authorization failures for each standard user for the Trusted Platform Module (TPM). If the number of authorization failures for the user within the duration for Standard User Lockout Duration equals this value, the standard user is prevented from sending commands to the Trusted Platform Module (TPM) that require authorization.

This setting helps administrators prevent the TPM hardware from entering a lockout mode because it slows the speed standard users can send commands requiring authorization to the TPM.

An authorization failure occurs each time a standard user sends a command to the TPM and receives an error response indicating an authorization failure occurred. Authorization failures older than the duration are ignored.

For each standard user two thresholds apply. Exceeding either threshold will prevent the standard user from sending a command to the TPM that requires authorization.

This value is the maximum number of authorization failures each standard user may have before the user is not allowed to send commands requiring authorization to the TPM.

The Standard User Lockout Total Threshold value is the maximum total number of authorization failures all standard users may have before all standard users are not allowed to send commands requiring authorization to the TPM.

The TPM is designed to protect itself against password guessing attacks by entering a hardware lockout mode when it receives too many commands with an incorrect authorization value. When the TPM enters a lockout mode it is global for all users including administrators and Windows features like BitLocker Drive Encryption. The number of authorization failures a TPM allows and how long it stays locked out vary by TPM manufacturer. Some TPMs may enter lockout mode for successively longer periods of time with fewer authorization failures depending on past failures. Some TPMs may require a system restart to exit the lockout mode. Other TPMs may require the system to be on so enough clock cycles elapse before the TPM exits the lockout mode.

An administrator with the TPM owner password may fully reset the TPM's hardware lockout logic using the TPM Management Console (tpm.msc). Each time an administrator resets the TPM's hardware lockout logic all prior standard user TPM authorization failures are ignored; allowing standard users to use the TPM normally again immediately.

If this value is not configured, a default value of 4 is used.

A value of zero means the OS will not allow standard users to send commands to the TPM which may cause an authorization failure.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Standard User Individual Lockout Threshold*
-   GP name: *StandardUserAuthorizationFailureIndividualThreshold_Name*
-   GP path: *System\Trusted Platform Module Services*
-   GP ADMX file name: *TPM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-tpm-standarduserauthorizationfailuretotalthreshold-name"></a>**ADMX_TPM/StandardUserAuthorizationFailureTotalThreshold_Name**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting allows you to manage the maximum number of authorization failures for all standard users for the Trusted Platform Module (TPM). If the total number of authorization failures for all standard users within the duration for Standard User Lockout Duration equals this value, all standard users are prevented from sending commands to the Trusted Platform Module (TPM) that require authorization.

This setting helps administrators prevent the TPM hardware from entering a lockout mode because it slows the speed standard users can send commands requiring authorization to the TPM.

An authorization failure occurs each time a standard user sends a command to the TPM and receives an error response indicating an authorization failure occurred. Authorization failures older than the duration are ignored.

For each standard user two thresholds apply. Exceeding either threshold will prevent the standard user from sending a command to the TPM that requires authorization.

The Standard User Individual Lockout value is the maximum number of authorization failures each standard user may have before the user is not allowed to send commands requiring authorization to the TPM.

This value is the maximum total number of authorization failures all standard users may have before all standard users are not allowed to send commands requiring authorization to the TPM.

The TPM is designed to protect itself against password guessing attacks by entering a hardware lockout mode when it receives too many commands with an incorrect authorization value. When the TPM enters a lockout mode it is global for all users including administrators and Windows features like BitLocker Drive Encryption. The number of authorization failures a TPM allows and how long it stays locked out vary by TPM manufacturer. Some TPMs may enter lockout mode for successively longer periods of time with fewer authorization failures depending on past failures. Some TPMs may require a system restart to exit the lockout mode. Other TPMs may require the system to be on so enough clock cycles elapse before the TPM exits the lockout mode.

An administrator with the TPM owner password may fully reset the TPM's hardware lockout logic using the TPM Management Console (tpm.msc). Each time an administrator resets the TPM's hardware lockout logic all prior standard user TPM authorization failures are ignored; allowing standard users to use the TPM normally again immediately.

If this value is not configured, a default value of 9 is used.

A value of zero means the OS will not allow standard users to send commands to the TPM which may cause an authorization failure.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Standard User Total Lockout Threshold*
-   GP name: *StandardUserAuthorizationFailureTotalThreshold_Name*
-   GP path: *System\Trusted Platform Module Services*
-   GP ADMX file name: *TPM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

<!--Policy-->
<a href="" id="admx-tpm-uselegacydap-name"></a>**ADMX_TPM/UseLegacyDAP_Name**  

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
Available in the latest Windows 10 Insider Preview Build. This policy setting configures the TPM to use the Dictionary Attack Prevention Parameters (lockout threshold and recovery time) to the values that were used for Windows 10 Version 1607 and below. Setting this policy will take effect only if a) the TPM was originally prepared using a version of Windows after Windows 10 Version 1607 and b) the System has a TPM 2.0. Note that enabling this policy will only take effect after the TPM maintenance task runs (which typically happens after a system restart). Once this policy has been enabled on a system and has taken effect (after a system restart), disabling it will have no impact and the system's TPM will remain configured using the legacy Dictionary Attack Prevention parameters, regardless of the value of this group policy. The only way for the disabled setting of this policy to take effect on a system where it was once enabled is to a) disable it from group policy and b)clear the TPM on the system.

<!--/Description-->
> [!TIP]
> This is an ADMX-backed policy and requires a special SyncML format to enable or disable. For details, see [Understanding ADMX-backed policies](./understanding-admx-backed-policies.md).
> 
> You must specify the data type in the SyncML as &lt;Format&gt;chr&lt;/Format&gt;. For an example SyncML, refer to [Enabling a policy](./understanding-admx-backed-policies.md#enabling-a-policy).
> 
> The payload of the SyncML must be XML-encoded; for this XML encoding, there are a variety of online encoders that you can use. To avoid encoding the payload, you can use CDATA if your MDM supports it. For more information, see [CDATA Sections](http://www.w3.org/TR/REC-xml/#sec-cdata-sect).

<!--ADMXBacked-->
ADMX Info:  
-   GP English name: *Configure the system to use legacy Dictionary Attack Prevention Parameters setting for TPM 2.0.*
-   GP name: *UseLegacyDAP_Name*
-   GP path: *System\Trusted Platform Module Services*
-   GP ADMX file name: *TPM.admx*

<!--/ADMXBacked-->
<!--/Policy-->
<hr/>

> [!NOTE]
> These policies are for upcoming release.

<!--/Policies-->

