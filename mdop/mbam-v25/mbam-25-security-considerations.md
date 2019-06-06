---
title: MBAM 2.5 Security Considerations
description: MBAM 2.5 Security Considerations
author: dansimp
ms.assetid: f6613c63-b32b-45fb-a6e8-673d6dae7d16
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 04/23/2017
---


# MBAM 2.5 Security Considerations


This topic contains the following information about how to secure Microsoft BitLocker Administration and Monitoring (MBAM):

-   [Configure MBAM to escrow the TPM and store OwnerAuth passwords](#bkmk-tpm)

-   [Configure MBAM to automatically unlock the TPM after a lockout](#bkmk-autounlock)

-   [Secure connections to SQL Server](#bkmk-secure-databases)

-   [Create accounts and groups](#bkmk-accts-groups)

-   [Use MBAM log files](#bkmk-logfiles)

-   [Review MBAM database TDE considerations](#bkmk-tde)

-   [Understand general security considerations](#bkmk-general-security)

## <a href="" id="bkmk-tpm"></a>Configure MBAM to escrow the TPM and store OwnerAuth passwords

**Note** For Windows 10, version 1607 or later, only Windows can take ownership of the TPM. In addition, Windows will not retain the TPM owner password when provisioning the TPM. See [TPM owner password](https://docs.microsoft.com/windows/security/information-protection/tpm/change-the-tpm-owner-password) for further details.

Depending on its configuration, the Trusted Platform Module (TPM) will lock itself in certain situations ─ such as when too many incorrect passwords are entered ─ and can remain locked for a period of time. During TPM lockout, BitLocker cannot access the encryption keys to perform unlock or decryption operations, requiring the user to enter their BitLocker recovery key to access the operating system drive. To reset TPM lockout, you must provide the TPM OwnerAuth password.

MBAM can store the TPM OwnerAuth password in the MBAM database if it owns the TPM or if it escrows the password. OwnerAuth passwords are then easily accessible on the Administration and Monitoring Website when you must recover from a TPM lockout, eliminating the need to wait for the lockout to resolve on its own.

### Escrowing TPM OwnerAuth in Windows 8 and higher

**Note** For Windows 10, version 1607 or later, only Windows can take ownership of the TPM. In addiiton, Windows will not retain the TPM owner password when provisioning the TPM. See [TPM owner password](https://docs.microsoft.com/windows/security/information-protection/tpm/change-the-tpm-owner-password) for further details.

In Windows 8 or higher, MBAM no longer must own the TPM to store the OwnerAuth password, as long as the OwnerAuth is available on the local machine.

To enable MBAM to escrow and then store TPM OwnerAuth passwords, you must configure these Group Policy settings.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Group Policy Setting</th>
<th align="left">Configuration</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Turn on TPM backup to Active Directory Domain Services</p></td>
<td align="left"><p>Disabled or Not Configured</p></td>
</tr>
<tr class="even">
<td align="left"><p>Configure the level of TPM owner authorization information available to the operating system</p></td>
<td align="left"><p>Delegated/None or Not Configured</p></td>
</tr>
</tbody>
</table>

 

The location of these Group Policy settings is **Computer Configuration** &gt; **Administrative Templates** &gt; **System** &gt; **Trusted Platform Module Services**.

**Note**  
Windows removes the OwnerAuth locally after MBAM successfully escrows it with these settings.

 

### Escrowing TPM OwnerAuth in Windows 7

In Windows 7, MBAM must own the TPM to automatically escrow TPM OwnerAuth information in the MBAM database. If MBAM does not own the TPM, you must use the MBAM Active Directory (AD) Data Import cmdlets to copy TPM OwnerAuth from Active Directory into the MBAM database.

### MBAM Active Directory Data Import cmdlets

The MBAM Active Directory Data Import cmdlets let you retrieve recovery key packages and OwnerAuth passwords that are stored in Active Directory.

The MBAM 2.5 SP1 server ships with four PowerShell cmdlets that pre-populate MBAM databases with the Volume recovery and TPM owner information stored in Active Directory.

For Volume Recovery keys and packages:

-   Read-ADRecoveryInformation

-   Write-MbamRecoveryInformation

For TPM Owner Information:

-   Read-ADTpmInformation

-   Write-MbamTpmInformation

For Associating Users to Computers:

-   Write-MbamComputerUser

The Read-AD\* cmdlets read information from Active Directory. The Write-Mbam\* cmdlets push the data into the MBAM databases. See [Cmdlet Reference for Microsoft Bitlocker Administration and Monitoring 2.5](https://technet.microsoft.com/library/dn459018.aspx) for detailed information about these cmdlets, including syntax, parameters, and examples.

**Create user-to-computer associations:** The MBAM Active Directory Data Import cmdlets gather information from Active Directory and insert the data into MBAM database. However, they do not associate users to volumes. You can download the Add-ComputerUser.ps1 PowerShell script to create user-to-machine associations, which let users regain access to a computer through the Administration and Monitoring Website or by using the Self-Service Portal for recovery. The Add-ComputerUser.ps1 script gathers data from the **Managed By** attribute in Active Directory (AD), the object owner in AD, or from a custom CSV file. The script then adds the discovered users to the recovery information pipeline object, which must be passed to Write-MbamRecoveryInformation to insert the data into the recovery database.

Download the Add-ComputerUser.ps1 PowerShell script from the [Microsoft Download Center](https://go.microsoft.com/fwlink/?LinkId=613122).

You can specify **help Add-ComputerUser.ps1** to get help for the script, including examples of how to use the cmdlets and the script.

To create user-to-computer associations after you have installed the MBAM server, use the Write-MbamComputerUser PowerShell cmdlet. Similar to the Add-ComputerUser.ps1 PowerShell script, this cmdlet lets you specify users that can use the Self-Service Portal to get TPM OwnerAuth information or volume recovery passwords for the specified computer.

**Note**  
The MBAM agent will override user-to-computer associations when that computer begins reporting up to the server.

 

**Prerequisites:** The Read-AD\* cmdlets can retrieve information from AD only if they are either run as a highly privileged user account, such as a Domain Administrator, or run as an account in a custom security group granted read access to the information (recommended).

[BitLocker Drive Encryption Operations Guide: Recovering Encrypted Volumes with AD DS](https://technet.microsoft.com/library/cc771778(WS.10).aspx) provides details about creating a custom security group (or multiple groups) with read access to the AD information.

**MBAM Recovery and Hardware Web Service Write Permissions:** The Write-Mbam\* cmdlets accept the URL of the MBAM Recovery and Hardware Service, used to publish the recovery or TPM information. Typically, only a domain computer service account can communicate with the MBAM Recovery and Hardware Service. In MBAM 2.5 SP1, you can configure the MBAM Recovery and Hardware Service with a security group called DataMigrationAccessGroup whose members are allowed to bypass the domain computer service account check. The Write-Mbam\* cmdlets must be run as a user belonging to this configured group. (Alternatively, the credentials of an individual user in the configured group can be specified by using the –Credential parameter in the Write-Mbam\* cmdlets.)

You can configure the MBAM Recovery and Hardware Service with the name of this security group in one of these ways:

-   Provide the name of the security group (or individual) in the -DataMigrationAccessGroup parameter of the Enable-MbamWebApplication –AgentService Powershell cmdlet.

-   Configure the group after the MBAM Recovery and Hardware Service has been installed by editing the web.config file in the &lt;inetpub&gt;\\Microsoft Bitlocker Management Solution\\Recovery and Hardware Service\\ folder.

    ``` syntax
    <add key="DataMigrationUsersGroupName" value="<groupName>|<empty>" />
    ```

    where &lt;groupName&gt; is replaced with the domain and the group name (or the individual user) that will be used to allow data migration from Active Directory.

-   Use the Configuration Editor in IIS Manager to edit this appSetting.

In the following example, the command, when run as a member of both the ADRecoveryInformation group and the Data Migration Users group, will pull the volume recovery information from computers in the WORKSTATIONS organizational unit (OU) in the contoso.com domain and write them to MBAM by using the MBAM Recovery and Hardware Service running on the mbam.contoso.com server.

``` syntax
PS C:\> Read-ADRecoveryInformation -Server contoso.com -SearchBase "OU=WORKSTATIONS,DC=CONTOSO,DC=COM" | Write-MbamRecoveryInformation -RecoveryServiceEndPoint "https://mbam.contoso.com/MBAMRecoveryAndHardwareService/CoreService.svc"
```

**Read-AD\* cmdlets** accept the name or IP address of an Active Directory hosting server machine to query for recovery or TPM information. We recommend providing the distinguished names of the AD containers in which the computer object resides as the value of the SearchBase parameter. If computers are stored across several OUs, the cmdlets can accept pipeline input to run once for each container. The distinguished name of an AD container will look similar to OU=Machines,DC=contoso,DC=com. Performing a search targeted to specific containers provides the following benefits:

-   Reduces the risk of timeout while querying a large AD dataset for computer objects.

-   Can omit OUs containing datacenter servers or other classes of computers for which the backup might not be desired or necessary.

Another option is to provide the –Recurse flag with or without the optional SearchBase to search for computer objects across all containers under the specified SearchBase or the entire domain respectively. When you use the -Recurse flag, you can also use the -MaxPageSize parameter to control the amount of local and remote memory required to service the query.

These cmdlets write to the pipeline objects of type PsObject. Each PsObject instance contains a single volume recovery key or TPM owner string with its associated computer name, timestamp, and other information required to publish it to the MBAM data store.

**Write-Mbam\* cmdlets** accept recovery information parameter values from the pipeline by property name. This allows the Write-Mbam\* cmdlets to accept the pipeline output of the Read-AD\* cmdlets (for example, Read-ADRecoveryInformation –Server contoso.com –Recurse | Write-MbamRecoveryInformation –RecoveryServiceEndpoint mbam.contoso.com).

The **Write-Mbam\* cmdlets** include optional parameters that provide options for fault tolerance, verbose logging, and preferences for WhatIf and Confirm.

The **Write-Mbam\* cmdlets** also include an optional *Time* parameter whose value is a **DateTime** object. This object includes a *Kind* attribute that can be set to `Local`, `UTC`, or `Unspecified`. When the *Time* parameter is populated from data taken from the Active Directory, the time is converted to UTC and this *Kind* attribute is set automatically to `UTC`. However, when populating the *Time* parameter using another source, such as a text file, you must explicitly set the *Kind* attribute to its appropriate value.

**Note**  
The Read-AD\* cmdlets do not have the ability to discover the user accounts that represent the computer users. User account associations are needed for the following:

-   Users to recover volume passwords/packages by using the Self-Service portal

-   Users who are not in the MBAM Advanced Helpdesk Users security group as defined during installation, recovering on behalf of other users

 

## <a href="" id="bkmk-autounlock"></a>Configure MBAM to automatically unlock the TPM after a lockout


You can configure MBAM 2.5 SP1 to automatically unlock the TPM in case of a lockout. If TPM lockout auto reset is enabled, MBAM can detect that a user is locked out and then get the OwnerAuth password from the MBAM database to automatically unlock the TPM for the user. TPM lockout auto reset is only available if the OS recovery key for that computer was retrieved by using the Self Service Portal or the Administration and Monitoring Website.

**Important**  
To enable TPM lockout auto reset, you must configure this feature on both the server side and in Group Policy on the client side.

 

-   To enable TPM lockout auto reset on the client side, configure the Group Policy setting "Configure TPM lockout auto reset" located at **Computer Configuration** &gt; **Administrative Templates** &gt; **Windows Components** &gt; **MDOP MBAM** &gt; **Client Management**.

-   To enable TPM lockout auto reset on the server side, you can check "Enable TPM lockout auto reset" in the MBAM Server Configuration wizard during setup.

    You can also enable TPM lockout auto reset in PowerShell by specifying the "-TPM lockout auto reset" switch while enabling the agent service web component.

After a user enters the BitLocker recovery key they obtained from the Self Service Portal or the Administration and Monitoring Website, the MBAM agent will determine if the TPM is locked out. If it is locked out, it will attempt to retrieve the TPM OwnerAuth for the computer from the MBAM database. If the TPM OwnerAuth is successfully retrieved, it will be used to unlock the TPM. Unlocking the TPM makes the TPM fully functional and the user will not be forced to enter the recovery password during subsequent reboots from a TPM lockout.

TPM lockout auto reset is disabled by default.

**Note**  
TPM lockout auto reset is only supported on computers running TPM version 1.2. TPM 2.0 provides built-in lockout auto reset functionality.

 

**The Recovery Audit Report** includes events related to TPM lockout auto reset. If a request is made from the MBAM client to retrieve a TPM OwnerAuth password, an event is logged to indicate recovery. Audit entries will include the following events:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Entry</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Audit Request Source</p></td>
<td align="left"><p>Agent TPM unlock</p></td>
</tr>
<tr class="even">
<td align="left"><p>Key Type</p></td>
<td align="left"><p>TPM Password Hash</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Reason Description</p></td>
<td align="left"><p>TPM Reset</p></td>
</tr>
</tbody>
</table>

 

## <a href="" id="bkmk-secure-databases"></a>Secure connections to SQL Server


In MBAM, SQL Server communicates with SQL Server Reporting Services and with the web services for the Administration and Monitoring Website and Self-Service Portal. We recommend that you secure the communication with SQL Server. For more information, see [Encrypting Connections to SQL Server](https://technet.microsoft.com/library/ms189067.aspx).

For more information about securing the MBAM websites, see [Planning How to Secure the MBAM Websites](planning-how-to-secure-the-mbam-websites.md).

## <a href="" id="bkmk-accts-groups"></a>Create accounts and groups


The best practice for managing user accounts is to create domain global groups and add user accounts to them. For a description of the recommended accounts and groups, see [Planning for MBAM 2.5 Groups and Accounts](planning-for-mbam-25-groups-and-accounts.md).

## <a href="" id="bkmk-logfiles"></a>Use MBAM log files


This section describes the MBAM Server and MBAM Client log files.

**MBAM Server Setup log files**

The **MBAMServerSetup.exe** file generates the following log files in the user’s **%temp%** folder during the MBAM installation:

-   **Microsoft\_BitLocker\_Administration\_and\_Monitoring\_&lt;14 numbers&gt;.log**

    Logs the actions taken during the MBAM setup and the MBAM Server feature configuration.

-   **Microsoft\_BitLocker\_Administration\_and\_Monitoring\_&lt;14\_numbers&gt;\_0\_MBAMServer.msi.log**

    Logs additional action taken during installation.

**MBAM Server Configuration log files**

-   **Applications and Services Logs/Microsoft Windows/MBAM-Setup**

    Logs the errors that occur when you are using Windows Powershell cmdlets or the MBAM Server Configuration wizard to configure the MBAM Server features.

**MBAM Client setup log files**

-   **MSI&lt;five random characters&gt;.log**

    Logs the actions taken during the MBAM Client installation.

**MBAM-Web log files**

-   Shows activity from the web portals and services.

## <a href="" id="bkmk-tde"></a>Review MBAM database TDE considerations


The transparent data encryption (TDE) feature that is available in SQL Server is an optional installation for the database instances that will host the MBAM database features.

With TDE, you can perform real-time, full database-level encryption. TDE is the optimal choice for bulk encryption to meet regulatory compliance or corporate data security standards. TDE works at the file level, which is similar to two Windows features: the Encrypting File System (EFS) and BitLocker Drive Encryption. Both features also encrypt data on the hard drive. TDE does not replace cell-level encryption, EFS, or BitLocker.

When TDE is enabled on a database, all backups are encrypted. Thus, special care must be taken to ensure that the certificate that was used to protect the database encryption key is backed up and maintained with the database backup. If this certificate (or certificates) is lost, the data will be unreadable.

Back up the certificate with the database. Each certificate backup should have two files. Both of these files should be archived. Ideally for security, they should be backed up separately from the database backup file. You can alternatively consider using the extensible key management (EKM) feature (see Extensible Key Management) for storage and maintenance of keys that are used for TDE.

For an example of how to enable TDE for MBAM database instances, see [Understanding Transparent Data Encryption (TDE)](https://technet.microsoft.com/library/bb934049.aspx).

## <a href="" id="bkmk-general-security"></a>Understand general security considerations


**Understand the security risks.** The most serious risk when you use Microsoft BitLocker Administration and Monitoring is that its functionality could be compromised by an unauthorized user who could then reconfigure BitLocker Drive Encryption and gain BitLocker encryption key data on MBAM Clients. However, the loss of MBAM functionality for a short period of time, due to a denial-of-service attack, does not generally have a catastrophic impact, unlike, for example, losing e-mail or network communications, or power.

**Physically secure your computers**. There is no security without physical security. An attacker who gets physical access to an MBAM Server could potentially use it to attack the entire client base. All potential physical attacks must be considered high risk and mitigated appropriately. MBAM Servers should be stored in a secure server room with controlled access. Secure these computers when administrators are not physically present by having the operating system lock the computer, or by using a secured screen saver.

**Apply the most recent security updates to all computers**. Stay informed about new updates for Windows operating systems, SQL Server, and MBAM by subscribing to the Security Notification service at the [Security TechCenter](https://go.microsoft.com/fwlink/?LinkId=28819).

**Use strong passwords or pass phrases**. Always use strong passwords with 15 or more characters for all MBAM administrator accounts. Never use blank passwords. For more information about password concepts, see [Password Policy](https://technet.microsoft.com/library/hh994572.aspx).



## Related topics


[Planning to Deploy MBAM 2.5](planning-to-deploy-mbam-25.md)

 
## Got a suggestion for MBAM?
- Add or vote on suggestions [here](http://mbam.uservoice.com/forums/268571-microsoft-bitlocker-administration-and-monitoring).
- For MBAM issues, use the [MBAM TechNet Forum](https://social.technet.microsoft.com/Forums/home?forum=mdopmbam).
 





