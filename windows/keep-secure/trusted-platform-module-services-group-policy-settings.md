---
title: TPM Group Policy settings (Windows 10)
description: This topic for the IT professional describes the Trusted Platform Module (TPM) Services that can be controlled centrally by using Group Policy settings.
ms.assetid: 54ff1c1e-a210-4074-a44e-58fee26e4dbd
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# TPM Group Policy settings


**Applies to**

-   Windows 10

This topic for the IT professional describes the Trusted Platform Module (TPM) Services that can be controlled centrally by using Group Policy settings.

## <a href="" id="bkmk-version-table"></a>


The TPM Services Group Policy settings are located at:

**Computer Configuration\\Administrative Templates\\System\\Trusted Platform Module Services\\**

<table style="width:100%;">
<colgroup>
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
<col width="16%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Setting</th>
<th align="left">Windows 10</th>
<th align="left">Windows Server 2012 R2, Windows 8.1 and Windows RT</th>
<th align="left">Windows Server 2012, Windows 8 and Windows RT</th>
<th align="left">Windows Server 2008 R2 and Windows 7</th>
<th align="left">Windows Server 2008 and Windows Vista</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>[Turn on TPM backup to Active Directory Domain Services](#bkmk-tpmgp-addsbu)</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Configure the list of blocked TPM commands](#bkmk-tpmgp-clbtc)</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Ignore the default list of blocked TPM commands](#bkmk-tpmgp-idlb)</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="even">
<td align="left"><p>[Ignore the local list of blocked TPM commands](#bkmk-tpmgp-illb)</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Configure the level of TPM owner authorization information available to the operating system](#bkmk-tpmgp-oauthos)</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>[Standard User Lockout Duration](#bkmk-tpmgp-suld)</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>[Standard User Individual Lockout Threshold](#bkmk-tpmgp-suilt)</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>[Standard User Total Lockout Threshold](#bkmk-tpmgpsutlt)</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p>X</p></td>
<td align="left"><p></p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-tpmgp-addsbu"></a>Turn on TPM backup to Active Directory Domain Services

This policy setting allows you to manage the Active Directory Domain Services (AD DS) backup of TPM owner information.

**Note**  
This policy setting applies to the Windows operating systems listed in the [version table](#bkmk-version-table).

 

TPM owner information includes a cryptographic hash of the TPM owner password. Certain TPM commands can be run only by the TPM owner. This hash authorizes the TPM to run these commands.

**Important**  
To back up TPM owner information from a computer running Windows 10, Windows 8.1, or Windows 8, you might need to first set up appropriate schema extensions and access control settings on the domain so that the AD DS backup can succeed. Windows Server 2012 R2 and Windows Server 2012 include the required schema extensions by default. For more information, see [AD DS schema extensions to support TPM backup](schema-extensions-for-windows-server-2008-r2-to-support-ad-ds-backup-of-tpm-information-from-windows-8-clients.md).

 

The TPM cannot be used to provide enhanced security features for BitLocker Drive Encryption and other applications without first setting an owner. To take ownership of the TPM with an owner password, on a local computer at the command prompt, type **tpm.msc** to open the TPM Management Console and select the action to **Initialize TPM**. If the TPM owner information is lost or is not available, limited TPM management is possible by running **tpm.msc**.

If you enable this policy setting, TPM owner information will be automatically and silently backed up to AD DS when you use Windows to set or change a TPM owner password. When this policy setting is enabled, a TPM owner password cannot be set or changed unless the computer is connected to the domain and the AD DS backup succeeds.

If you disable or do not configure this policy setting, TPM owner information will not be backed up to AD DS.

### <a href="" id="bkmk-tpmgp-clbtc"></a>Configure the list of blocked TPM commands

This policy setting allows you to manage the Group Policy list of Trusted Platform Module (TPM) commands that are blocked by Windows.

**Note**  
This policy setting applies to the Windows operating systems listed in the [version table](#bkmk-version-table).

 

If you enable this policy setting, Windows will block the specified commands from being sent to the TPM on the computer. TPM commands are referenced by a command number. For example, command number 129 is **TPM\_OwnerReadInternalPub**, and command number 170 is **TPM\_FieldUpgrade**. To find the command number that is associated with each TPM command, at the command prompt, type **tpm.msc**to open the TPM Management Console and navigate to the **Command Management** section.

If you disable or do not configure this policy setting, only those TPM commands that are specified through the default or local lists can be blocked by Windows. The default list of blocked TPM commands is preconfigured by Windows.

-   You can view the default list by typing **tpm.msc** at the command prompt, navigating to the **Command Management** section, and exposing the **On Default Block List** column.

-   The local list of blocked TPM commands is configured outside of Group Policy by running the TPM Management Console or scripting using the **Win32\_Tpm** interface.

For information how to enforce or ignore the default and local lists of blocked TPM commands, see

-   [Ignore the default list of blocked TPM commands](#bkmk-tpmgp-idlb)

-   [Ignore the local list of blocked TPM commands](#bkmk-tpmgp-illb)

### <a href="" id="bkmk-tpmgp-idlb"></a>Ignore the default list of blocked TPM commands

This policy setting allows you to enforce or ignore the computer's default list of blocked Trusted Platform Module (TPM) commands.

**Note**  
This policy setting applies to the Windows operating systems listed in the [version table](#bkmk-version-table).

 

The default list of blocked TPM commands is preconfigured by Windows. You can view the default list by typing **tpm.msc** at the command prompt to open the TPM Management Console, navigating to the **Command Management** section, and exposing the **On Default Block List** column. Also see the related policy setting, [Configure the list of blocked TPM commands](#bkmk-tpmgp-clbtc).

If you enable this policy setting, the Windows operating system will ignore the computer's default list of blocked TPM commands, and it will block only those TPM commands that are specified by Group Policy or the local list.

If you disable or do not configure this policy setting, Windows will block the TPM commands in the default list, in addition to the commands that are specified by Group Policy and the local list of blocked TPM commands.

### <a href="" id="bkmk-tpmgp-illb"></a>Ignore the local list of blocked TPM commands

This policy setting allows you to enforce or ignore the computer's local list of blocked Trusted Platform Module (TPM) commands.

**Note**  
This policy setting applies to the Windows operating systems listed in the [version table](#bkmk-version-table).

 

The local list of blocked TPM commands is configured outside of Group Policy by typing **tpm.msc** at the command prompt to open the TPM Management Console, or scripting using the **Win32\_Tpm** interface. (The default list of blocked TPM commands is preconfigured by Windows.) Also see the related policy setting to **Configure the list of blocked TPM commands**.

If you enable this policy setting, the Windows operating system will ignore the computer's local list of blocked TPM commands, and it will block only those TPM commands that are specified by Group Policy or the default list.

If you disable or do not configure this policy setting, Windows will block the TPM commands in the local list, in addition to the commands that are specified in Group Policy and the default list of blocked TPM commands.

### <a href="" id="bkmk-tpmgp-oauthos"></a>Configure the level of TPM owner authorization information available to the operating system

This policy setting configures how much of the TPM owner authorization information is stored in the registry of the local computer. Depending on the amount of TPM owner authorization information that is stored locally, the Windows operating system and TPM-based applications can perform certain actions in the TPM that require TPM owner authorization without requiring the user to enter the TPM owner password.

**Note**  
This policy setting applies to the Windows operating systems listed in the [version table](#bkmk-version-table).

 

There are three TPM owner authentication settings that are managed by the Windows operating system. You can choose a value of **Full**, **Delegate**, or **None**.

-   **Full**   This setting stores the full TPM owner authorization, the TPM administrative delegation blob, and the TPM user delegation blob in the local registry. With this setting, you can use the TPM without requiring remote or external storage of the TPM owner authorization value. This setting is appropriate for scenarios that do not require you to reset the TPM anti-hammering logic or change the TPM owner authorization value. Some TPM-based applications may require that this setting is changed before features that depend on the TPM anti-hammering logic can be used.

-   **Delegated**   This setting stores only the TPM administrative delegation blob and the TPM user delegation blob in the local registry. This setting is appropriate for use with TPM-based applications that depend on the TPM antihammering logic. When you use this setting, we recommend using external or remote storage for the full TPM owner authorization value—for example, backing up the value in Active Directory Domain Services (AD DS).

-   **None**   This setting provides compatibility with previous operating systems and applications. You can also use it for scenarios when TPM owner authorization cannot be stored locally. Using this setting might cause issues with some TPM-based applications.

**Note**  
If the operating system managed TPM authentication setting is changed from **Full** to **Delegated**, the full TPM owner authorization value will be regenerated, and any copies of the previously set TPM owner authorization value will be invalid. If you are backing up the TPM owner authorization value to AD DS, the new owner authorization value is automatically backed up to AD DS when it is changed.

 

**Registry information**

Registry key: HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Policies\\Microsoft\\TPM

DWORD: OSManagedAuthLevel

The following table shows the TPM owner authorization values in the registry.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Value Data</th>
<th align="left">Setting</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0</p></td>
<td align="left"><p>None</p></td>
</tr>
<tr class="even">
<td align="left"><p>2</p></td>
<td align="left"><p>Delegated</p></td>
</tr>
<tr class="odd">
<td align="left"><p>4</p></td>
<td align="left"><p>Full</p></td>
</tr>
</tbody>
</table>

 

If you enable this policy setting, the Windows operating system will store the TPM owner authorization in the registry of the local computer according to the TPM authentication setting you choose.

If you disable or do not configure this policy setting, and the **Turn on TPM backup to Active Directory Domain Services** policy setting is also disabled or not configured, the default setting is to store the full TPM authorization value in the local registry. If this policy is disabled or not configured, and the **Turn on TPM backup to Active Directory Domain Services** policy setting is enabled, only the administrative delegation and the user delegation blobs are stored in the local registry.

### <a href="" id="bkmk-tpmgp-suld"></a>Standard User Lockout Duration

This policy setting allows you to manage the duration in minutes for counting standard user authorization failures for Trusted Platform Module (TPM) commands requiring authorization. An authorization failure occurs each time a standard user sends a command to the TPM and receives an error response that indicates an authorization failure occurred. Authorization failures that are older than the duration you set are ignored. If the number of TPM commands with an authorization failure within the lockout duration equals a threshold, a standard user is prevented from sending commands that require authorization to the TPM.

**Note**  
This policy setting applies to the Windows operating systems listed in the [version table](#bkmk-version-table).

 

The TPM is designed to protect itself against password guessing attacks by entering a hardware lockout mode when it receives too many commands with an incorrect authorization value. When the TPM enters a lockout mode, it is global for all users (including administrators) and for Windows features such as BitLocker Drive Encryption.

The number of authorization failures that a TPM allows and how long it stays locked vary by TPM manufacturer. Some TPMs may enter lockout mode for successively longer periods of time, with fewer authorization failures, depending on past failures. Some TPMs may require a system restart to exit the lockout mode. Other TPMs may require that the system is on so enough clock cycles elapse before the TPM exits the lockout mode.

This setting helps administrators prevent the TPM hardware from entering a lockout mode by slowing the speed at which standard users can send commands that require authorization to the TPM.

For each standard user, two thresholds apply. Exceeding either threshold prevents the user from sending a command that requires authorization to the TPM. Use the following policy settings to set the lockout duration:

-   [Standard User Individual Lockout Threshold](#bkmk-individual)   This value is the maximum number of authorization failures that each standard user can have before the user is not allowed to send commands that require authorization to the TPM.

-   [Standard User Total Lockout Threshold](#bkmk-total)   This value is the maximum total number of authorization failures that all standard users can have before all standard users are not allowed to send commands that require authorization to the TPM.

An administrator with the TPM owner password can fully reset the TPM's hardware lockout logic by using the TPM Management Console (tpm.msc). Each time an administrator resets the TPM's hardware lockout logic, all prior standard user TPM authorization failures are ignored. This allows standard users to immediately use the TPM normally.

If you do not configure this policy setting, a default value of 480 minutes (8 hours) is used.

### <a href="" id="bkmk-individual"></a>Standard User Individual Lockout Threshold

This policy setting allows you to manage the maximum number of authorization failures for each standard user for the Trusted Platform Module (TPM). This value is the maximum number of authorization failures that each standard user can have before the user is not allowed to send commands that require authorization to the TPM. If the number of authorization failures for the user within the duration that is set for the **Standard User Lockout Duration** policy setting equals this value, the standard user is prevented from sending commands that require authorization to the Trusted Platform Module (TPM).

**Note**  
This policy setting applies to the Windows operating systems listed in the [version table](#bkmk-version-table).

 

This setting helps administrators prevent the TPM hardware from entering a lockout mode by slowing the speed at which standard users can send commands that require authorization to the TPM.

An authorization failure occurs each time a standard user sends a command to the TPM and receives an error response indicating an authorization failure occurred. Authorization failures older than the duration are ignored.

An administrator with the TPM owner password can fully reset the TPM's hardware lockout logic by using the TPM Management Console (tpm.msc). Each time an administrator resets the TPM's hardware lockout logic, all prior standard user TPM authorization failures are ignored. This allows standard users to immediately use the TPM normally.

If you do not configure this policy setting, a default value of 4 is used. A value of zero means that the operating system will not allow standard users to send commands to the TPM, which might cause an authorization failure.

### <a href="" id="bkmk-total"></a>Standard User Total Lockout Threshold

This policy setting allows you to manage the maximum number of authorization failures for all standard users for the Trusted Platform Module (TPM). If the total number of authorization failures for all standard users within the duration that is set for the **Standard User Lockout Duration** policy equals this value, all standard users are prevented from sending commands that require authorization to the Trusted Platform Module (TPM).

**Note**  
This policy setting applies to the Windows operating systems listed in the [version table](#bkmk-version-table).

 

This setting helps administrators prevent the TPM hardware from entering a lockout mode because it slows the speed standard users can send commands requiring authorization to the TPM.

An authorization failure occurs each time a standard user sends a command to the TPM and receives an error response indicating an authorization failure occurred. Authorization failures older than the duration are ignored.

For each standard user two thresholds apply. Exceeding either threshold will prevent the standard user from sending a command to the TPM that requires authorization.

1.  The standard user individual lockout value is the maximum number of authorization failures each standard user may have before the user is not allowed to send commands requiring authorization to the TPM.

2.  The standard user total lockout threshold value is the maximum total number of authorization failures all standard users may have before all standard users are not allowed to send commands requiring authorization to the TPM.

The TPM is designed to protect itself against password guessing attacks by entering a hardware lockout mode when it receives too many commands with an incorrect authorization value. When the TPM enters a lockout mode, it is global for all users (including administrators) and for Windows features such as BitLocker Drive Encryption..

The number of authorization failures a TPM allows and how long it stays locked out vary by TPM manufacturer. Some TPMs may enter lockout mode for successively longer periods of time with fewer authorization failures depending on past failures. Some TPMs may require a system restart to exit the lockout mode. Other TPMs may require the system to be on so enough clock cycles elapse before the TPM exits the lockout mode.

An administrator with the TPM owner password can fully reset the TPM's hardware lockout logic by using the TPM Management Console (tpm.msc). Each time an administrator resets the TPM's hardware lockout logic, all prior standard user TPM authorization failures are ignored. This allows standard users to immediately use the TPM normally.

If you do not configure this policy setting, a default value of 9 is used. A value of zero means that the operating system will not allow standard users to send commands to the TPM, which might cause an authorization failure.

## Additional resources


[Trusted Platform Module Technology Overview](trusted-platform-module-technology-overview.md)

[TPM Cmdlets in Windows PowerShell](http://technet.microsoft.com/library/jj603116.aspx)

[Prepare your organization for BitLocker: Planning and Policies - TPM configurations](http://technet.microsoft.com/library/jj592683.aspx)

 

 





