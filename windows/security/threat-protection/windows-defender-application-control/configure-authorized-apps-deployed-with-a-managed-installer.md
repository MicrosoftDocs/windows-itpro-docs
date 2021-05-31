---
title: Configure authorized apps deployed with a WDAC managed installer (Windows 10)
description: Explains how to configure a custom Manged Installer.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jsuther1974
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.date: 08/14/2020
ms.technology: mde
---

# Configuring authorized apps deployed by a managed installer with AppLocker and Windows Defender Application Control

**Applies to:**

- Windows 10
- Windows Server 2019

Windows 10, version 1703 introduced a new option for Windows Defender Application Control (WDAC), called managed installer, that helps balance security and manageability when enforcing application control policies. This option lets you automatically allow applications installed by a designated software distribution solution such as Microsoft Endpoint Configuration Manager.

## How does a managed installer work?

A new rule collection in AppLocker specifies binaries that are trusted by the organization as an authorized source for application deployment. When one of these binaries runs, Windows will monitor the binary's process (and processes it launches) then tag all files it writes as having originated from a managed installer. The managed installer rule collection is configured using Group Policy and can be applied with the Set-AppLockerPolicy PowerShell cmdlet. You can't currently set managed installers with the AppLocker CSP through MDM.

Having defined your managed installers using AppLocker, you can then configure WDAC to trust files installed by a managed installer by adding the "Enabled:Managed Installer" option to your WDAC policy. Once that option is set, WDAC will check for managed installer origin information when determining whether or not to allow a binary to run. As long as there are no deny rules present for the file, WDAC will allow a file to run based on its managed installer origin.

You should ensure that the WDAC policy allows the system/boot components and any other authorized applications that can't be deployed through a managed installer.

## Security considerations with managed installer

Since managed installer is a heuristic-based mechanism, it doesn't provide the same security guarantees that explicit allow or deny rules do.
It is best suited for use where each user operates as a standard user and where all software is deployed and installed by a software distribution solution, such as Microsoft Endpoint Configuration Manager (MEMCM).

Users with administrator privileges, or malware running as an administrator user on the system, may be able to circumvent the intent of Windows Defender Application Control when the managed installer option is allowed.

If a managed installer process runs in the context of a user with standard privileges, then it is possible that standard users or malware running as standard user may be able to circumvent the intent of Windows Defender Application Control.

Some application installers may automatically run the application at the end of the installation process. If this happens when the installer is run by a managed installer, then the managed installer's heuristic tracking and authorization will extend to all files created during the first run of the application. This could result in over-authorization for executables that were not intended. To avoid that outcome, ensure that the application deployment solution used as a managed installer limits running applications as part of installation.

## Known limitations with managed installer

- Application control, based on managed installer, does not support applications that self-update. If an application deployed by a managed installer later updates itself, the updated application files won't include the managed installer origin information, and may not be able to run. When you rely on managed installers, you must deploy and install all application updates using a managed installer, or include rules to authorize the app in the WDAC policy. In some cases, it may be possible to also designate an application binary that performs self-updates as a managed installer. Proper review for functionality and security should be performed for the application before using this method.

- [Packaged apps (MSIX)](/windows/msix/) deployed through a managed installer aren't tracked by the managed installer heuristic and will need to be separately authorized in your WDAC policy. See [Manage packaged apps with WDAC](manage-packaged-apps-with-windows-defender-application-control.md).

- Some applications or installers may extract, download, or generate binaries and immediately attempt to run them. Files run by such a process may not be allowed by the managed installer heuristic. In some cases, it may be possible to also designate an application binary that performs such an operation as a managed installer. Proper review for functionality and security should be performed for the application before using this method.

- The managed installer heuristic doesn't authorize kernel drivers. The WDAC policy must have rules that allow the necessary drivers to run.

## Configuring the managed installer

Setting up managed installer tracking and application execution enforcement requires applying both an AppLocker and WDAC policy, with specific rules and options enabled.
There are three primary steps to keep in mind:

- Specify managed installers, by using the Managed Installer rule collection in AppLocker policy.
- Enable service enforcement in AppLocker policy.
- Enable the managed installer option in a WDAC policy.

## Specify managed installers using the Managed Installer rule collection in AppLocker policy

The identity of the managed installer executable(s) is specified in an AppLocker policy, in a Managed Installer rule collection.

### Create Managed Installer rule collection

Currently, neither the AppLocker policy creation UI in GPO Editor nor the PowerShell cmdlets allow for directly specifying rules for the Managed Installer rule collection. However, you can use a text editor to make the simple changes needed to an EXE or DLL rule collection policy, to specify Type="ManagedInstaller", so that the new rule can be imported into a GPO.

1. Use [New-AppLockerPolicy](/powershell/module/applocker/new-applockerpolicy?view=win10-ps) to make an EXE rule for the file you are designating as a managed installer. Note that only EXE file types can be designated as managed installers. Below is an example using the rule type Publisher with a hash fallback but other rule types can be used as well. You may need to reformat the output for readability.

    ```powershell
    Get-ChildItem <exe filepath> | Get-AppLockerFileInformation | New-AppLockerPolicy -RuleType Publisher, Hash -User Everyone -Xml > AppLocker_MI_PS_ISE.xml
    ```

2. Manually rename the rule collection to ManagedInstaller

    Change

    ```powershell
    <RuleCollection Type="Exe" EnforcementMode="NotConfigured">
    ```

    to

    ```powershell
    <RuleCollection Type="ManagedInstaller" EnforcementMode="AuditOnly">
    ```

An example of a valid Managed Installer rule collection using Microsoft Endpoint Config Manager (MEMCM) is shown below.

```xml
<RuleCollection Type="ManagedInstaller" EnforcementMode="AuditOnly">
    <FilePublisherRule Id="6cc9a840-b0fd-4f86-aca7-8424a22b4b93" Name="MEMCM - CCMEXEC.EXE, 5.0.0.0+, Microsoft signed" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="*" BinaryName="CCMEXEC.EXE">
          <BinaryVersionRange LowSection="5.0.0.0" HighSection="*" />
        </FilePublisherCondition>
      </Conditions>
    </FilePublisherRule>
    <FilePublisherRule Id="780ae2d3-5047-4240-8a57-767c251cbb12" Name="MEMCM - CCMSETUP.EXE, 5.0.0.0+, Microsoft signed" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="*" BinaryName="CCMSETUP.EXE">
          <BinaryVersionRange LowSection="5.0.0.0" HighSection="*" />
        </FilePublisherCondition>
      </Conditions>
    </FilePublisherRule>
</RuleCollection>
```

### Enable service enforcement in AppLocker policy

Since many installation processes rely on services, it is typically necessary to enable tracking of services.
Correct tracking of services requires the presence of at least one rule in the rule collection. So, a simple audit only rule will suffice. This can be added to the policy created above, which specifies your managed installer rule collection.

For example:

```xml
<RuleCollection Type="Dll" EnforcementMode="AuditOnly" >
    <FilePathRule Id="86f235ad-3f7b-4121-bc95-ea8bde3a5db5" Name="Dummy Rule" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
      <Conditions>
        <FilePathCondition Path="%OSDRIVE%\ThisWillBeBlocked.dll" />
      </Conditions>
    </FilePathRule>
    <RuleCollectionExtensions>
      <ThresholdExtensions>
        <Services EnforcementMode="Enabled" />
      </ThresholdExtensions>
      <RedstoneExtensions>
        <SystemApps Allow="Enabled"/>
      </RedstoneExtensions>
    </RuleCollectionExtensions>
  </RuleCollection>
  <RuleCollection Type="Exe" EnforcementMode="AuditOnly">
    <FilePathRule Id="9420c496-046d-45ab-bd0e-455b2649e41e" Name="Dummy Rule" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
      <Conditions>
        <FilePathCondition Path="%OSDRIVE%\ThisWillBeBlocked.exe" />
      </Conditions>
    </FilePathRule>
    <RuleCollectionExtensions>
      <ThresholdExtensions>
        <Services EnforcementMode="Enabled" />
      </ThresholdExtensions>
      <RedstoneExtensions>
        <SystemApps Allow="Enabled"/>
      </RedstoneExtensions>
    </RuleCollectionExtensions>
  </RuleCollection>
```

## Enable the managed installer option in WDAC policy

In order to enable trust for the binaries laid down by managed installers, the "Enabled: Managed Installer" option must be specified in your WDAC policy.
This can be done by using the [Set-RuleOption cmdlet](/powershell/module/configci/set-ruleoption) with Option 13.

Below are steps to create a WDAC policy which allows Windows to boot and enables the managed installer option.

1. Copy the DefaultWindows_Audit policy into your working folder from "C:\Windows\schemas\CodeIntegrity\ExamplePolicies\DefaultWindows_Audit.xml"

2. Reset the policy ID to ensure it is in multiple policy format, and give it a different GUID from the example policies. Also, give it a friendly name to help with identification.

   For example:

    ```powershell
    Set-CIPolicyIdInfo -FilePath <XML filepath> -PolicyName "<friendly name>" -ResetPolicyID
    ```

3. Set Option 13 (Enabled:Managed Installer)

    ```powershell
    Set-RuleOption -FilePath <XML filepath> -Option 13
    ```

## Set the AppLocker filter driver to autostart

To enable the managed installer, you need to set the AppLocker filter driver to autostart, and start it.

To do so, run the following command as an Administrator:

```console
appidtel.exe start [-mionly]
```

Specify "-mionly" if you will not use the Intelligent Security Graph (ISG).

## Enabling managed installer logging events

Refer to [Understanding Application Control Events](event-id-explanations.md#optional-intelligent-security-graph-isg-or-managed-installer-mi-diagnostic-events) for information on enabling optional managed installer diagnostic events.