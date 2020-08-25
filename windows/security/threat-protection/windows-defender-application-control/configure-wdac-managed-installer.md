---
title: Configure a WDAC managed installer (Windows 10)
description: Explains how to configure a custom Manged Installer.
keywords:  security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: w10
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
---

# Configuring a managed installer with AppLocker and Windows Defender Application Control

**Applies to:**

- Windows 10
- Windows Server 2019

Setting up managed installer tracking and application execution enforcement requires applying both an AppLocker and WDAC policy with specific rules and options enabled.
There are three primary steps to keep in mind:

- Specify managed installers by using the Managed Installer rule collection in AppLocker policy.
- Enable service enforcement in AppLocker policy.
- Enable the managed installer option in a WDAC policy.

## Specify managed installers using the Managed Installer rule collection in AppLocker policy

The identity of the managed installer executable(s) is specified in an AppLocker policy in a Managed Installer rule collection.

### Create Managed Installer rule collection

Currently, neither the AppLocker policy creation UI in GPO Editor nor the PowerShell cmdlets allow for directly specifying rules for the Managed Installer rule collection. However, a text editor can be used to make the simple changes needed to an EXE or DLL rule collection policy to specify Type="ManagedInstaller", so that the new rule can be imported into a GPO.

1. Use [New-AppLockerPolicy](https://docs.microsoft.com/powershell/module/applocker/new-applockerpolicy?view=win10-ps) to make an EXE rule for the file you are designating as a managed installer. Note that only EXE file types can be designated as managed installers. Below is an example using the rule type Publisher with a hash fallback, but other rule types can be used as well. You may need to reformat the output for readability.

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
Correct tracking of services requires the presence of at least one rule in the rule collection, so a simple audit only rule will suffice. This can be added to the policy created above which specifies your managed installer rule collection.

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

In order to enable trust for the binaries laid down by managed installers, the Enabled: Managed Installer option must be specified in your WDAC policy.
This can be done by using the [Set-RuleOption cmdlet](https://docs.microsoft.com/powershell/module/configci/set-ruleoption) with Option 13.

Below are steps to create a WDAC policy which allows Windows to boot and enables the managed installer option.

1. Copy the DefaultWindows_Audit policy into your working folder from C:\Windows\schemas\CodeIntegrity\ExamplePolicies\DefaultWindows_Audit.xml

2. Reset the policy ID to ensure it is in multiple policy format and give it a different GUID from the example policies. Also give it a friendly name to help with identification.

    Ex.

    ```powershell
    Set-CIPolicyIdInfo -FilePath <XML filepath> -PolicyName "<friendly name>" -ResetPolicyID
    ```

3. Set Option 13 (Enabled:Managed Installer)

    ```powershell
    Set-RuleOption -FilePath <XML filepath> -Option 13
    ```

## Set the AppLocker filter driver to autostart

To enable the managed installer, you need to set the AppLocker filter driver to autostart and start it.

To do so, run the following command as an Administrator:

```console
appidtel.exe start [-mionly]
```

Specify `-mionly` if you will not use the Intelligent Security Graph (ISG).

## Enabling managed installer logging events

Refer to [Understanding Application Control Events](event-id-explanations.md#optional-intelligent-security-graph-isg-or-managed-installer-mi-diagnostic-events) for information on enabling optional managed installer diagnostic events.
