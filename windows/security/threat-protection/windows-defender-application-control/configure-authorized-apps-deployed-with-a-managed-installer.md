---
title: Configure authorized apps deployed with a WDAC-managed installer (Windows 10)
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
ms.date: 08/10/2021
ms.technology: mde
---

# Configuring authorized apps deployed by a managed installer with AppLocker and Windows Defender Application Control

**Applies to:**

- Windows 10
- Windows Server 2019

Windows 10, version 1703 introduced a new option for Windows Defender Application Control (WDAC), called _managed installer_, that helps balance security and manageability when enforcing application control policies. This option lets you automatically allow applications installed by a designated software distribution solution such as Microsoft Endpoint Configuration Manager.

## How does a managed installer work?

A new rule collection in AppLocker specifies binaries that are trusted by the organization as an authorized source for application deployment. When one of these trusted binaries runs, Windows will monitor the binary's process (and processes it launches), and then tag all files it writes as having originated from a managed installer. The managed installer rule collection is configured using Group Policy and can be applied with the Set-AppLockerPolicy PowerShell cmdlet. You can't currently set managed installers with the AppLocker CSP through MDM.

Having defined your managed installers by using AppLocker, you can then configure WDAC to trust files that are installed by a managed installer. You do so by adding the "Enabled:Managed Installer" option to your WDAC policy. When that option is set, WDAC will check for managed installer origin information when determining whether or not to allow a binary to run. As long as there are no deny rules present for the file, WDAC will allow a file to run based on its managed installer origin.

Ensure that the WDAC policy allows the system/boot components and any other authorized applications that can't be deployed through a managed installer.

## Security considerations with managed installer

Since managed installer is a heuristic-based mechanism, it doesn't provide the same security guarantees that explicit allow or deny rules do.
It's best suited for use where each user operates as a standard user and where all software is deployed and installed by a software distribution solution, such as Microsoft Endpoint Configuration Manager (MEMCM).

Users with administrator privileges, or malware running as an administrator user on the system, may be able to circumvent the intent of Windows Defender Application Control when the managed installer option is allowed.

If a managed installer process runs in the context of a user with standard privileges, then it's possible that standard users or malware running as standard user may be able to circumvent the intent of Windows Defender Application Control.

Some application installers may automatically run the application at the end of the installation process. If this happens when the installer is run by a managed installer, then the managed installer's heuristic tracking and authorization will extend to all files that are created during the first run of the application. Extension of the installer's authorization could result in unintentional authorization of an executable. To avoid that outcome, ensure that the method of application deployment that is used as a managed installer limits running applications as part of installation.

## Known limitations with managed installer

- Application control, based on managed installer, doesn't support applications that self-update. If an application that was deployed by a managed installer later updates itself, the updated application files won't include the origin information from the managed installer, and they might not be able to run. When you rely on managed installers, you must deploy and install all application updates by using a managed installer, or include rules to authorize the app in the WDAC policy. In some cases, it may be possible to also designate an application binary that performs self-updates as a managed installer. Proper review for functionality and security should be performed for the application before using this method.

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

Currently, neither the AppLocker policy creation UI in GPO Editor nor the PowerShell cmdlets allow for directly specifying rules for the Managed Installer rule collection. However, you can use a text editor to make the changes that are needed to an EXE or DLL rule collection policy, to specify Type="ManagedInstaller", so that the new rule can be imported into a GPO.

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

An example of a valid Managed Installer rule collection, using Microsoft Endpoint Config Manager (MEMCM), MEM (Intune), Powershell, and Powershell ISE, is shown below. Remove any rules that you do not wish to designate as a Managed Installer.

```xml
<AppLockerPolicy Version="1">
  <RuleCollection Type="Appx" EnforcementMode="NotConfigured" />
  <RuleCollection Type="Dll" EnforcementMode="AuditOnly" >
    <FilePublisherRule Id="86f235ad-3f7b-4121-bc95-ea8bde3a5db5" Name="Allow all" Description="Allow all" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="*" ProductName="*" BinaryName="*">
          <BinaryVersionRange LowSection="*" HighSection="*" />
        </FilePublisherCondition>
      </Conditions>
    </FilePublisherRule>
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
    <FilePublisherRule Id="9420c496-046d-45ab-bd0e-455b2649e41e" Name="Allow all" Description="Allow all" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="*" ProductName="*" BinaryName="*">
          <BinaryVersionRange LowSection="*" HighSection="*" />
        </FilePublisherCondition>
      </Conditions>
    </FilePublisherRule>
    <RuleCollectionExtensions>
      <ThresholdExtensions>
        <Services EnforcementMode="Enabled" />
      </ThresholdExtensions>
      <RedstoneExtensions>
        <SystemApps Allow="Enabled"/>
      </RedstoneExtensions>
    </RuleCollectionExtensions>
  </RuleCollection>
  <RuleCollection Type="Msi" EnforcementMode="NotConfigured" />
  <RuleCollection Type="Script" EnforcementMode="NotConfigured" />
  <RuleCollection Type="ManagedInstaller" EnforcementMode="AuditOnly">
    <FilePublisherRule Id="55932f09-04b8-44ec-8e2d-3fc736500c56" Name="MICROSOFT.MANAGEMENT.SERVICES.INTUNEWINDOWSAGENT.EXE version 1.39.200.2 or greater in MICROSOFTÂ® INTUNEâ„¢ from O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="MICROSOFTÂ® INTUNEâ„¢" BinaryName="MICROSOFT.MANAGEMENT.SERVICES.INTUNEWINDOWSAGENT.EXE">
          <BinaryVersionRange LowSection="1.39.200.2" HighSection="*" />
        </FilePublisherCondition>
      </Conditions>
    </FilePublisherRule>
      <FilePublisherRule Id="6ead5a35-5bac-4fe4-a0a4-be8885012f87" Name="CMM - CCMEXEC.EXE, 5.0.0.0+, Microsoft signed" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
        <Conditions>
          <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="*" BinaryName="CCMEXEC.EXE">
            <BinaryVersionRange LowSection="5.0.0.0" HighSection="*" />
          </FilePublisherCondition>
        </Conditions>
      </FilePublisherRule>
    <FilePublisherRule Id="8e23170d-e0b7-4711-b6d0-d208c960f30e" Name="CCM - CCMSETUP.EXE, 5.0.0.0+, Microsoft signed" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="*" BinaryName="CCMSETUP.EXE">
          <BinaryVersionRange LowSection="5.0.0.0" HighSection="*" />
        </FilePublisherCondition>
      </Conditions>
    </FilePublisherRule>
    <FilePublisherRule Id="a8cb325e-b26e-4f52-b528-a137764cae42" Name="POWERSHELL.EXE, version 10.0.0.0 and above, in MICROSOFTÂ® WINDOWSÂ® OPERATING SYSTEM, from O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="*" BinaryName="POWERSHELL.EXE">
          <BinaryVersionRange LowSection="*" HighSection="*" />
        </FilePublisherCondition>
      </Conditions>
    </FilePublisherRule>
    <FilePublisherRule Id="a8cb325e-b26e-4f52-b528-a137764cae54" Name="POWERSHELL_ISE.EXE, version 10.0.0.0 and above, in MICROSOFTÂ® WINDOWSÂ® OPERATING SYSTEM, from O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
      <Conditions>
        <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="*" BinaryName="POWERSHELL_ISE.EXE">
          <BinaryVersionRange LowSection="*" HighSection="*" />
        </FilePublisherCondition>
      </Conditions>
    </FilePublisherRule>
  </RuleCollection>
</AppLockerPolicy>
```
### Enable service enforcement in AppLocker policy

Since many installation processes rely on services, it is typically necessary to enable tracking of services.
Correct tracking of services requires the presence of at least one rule in the rule collection. So, a simple audit-only rule will suffice. The audit rule can be added to the policy created above, which specifies the rule collection of your managed installer.

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

Below are steps to create a WDAC policy that allows Windows to boot and enables the managed installer option.

1. Copy the DefaultWindows_Audit policy into your working folder from "C:\Windows\schemas\CodeIntegrity\ExamplePolicies\DefaultWindows_Audit.xml"

2. Reset the policy ID to ensure that it is in multiple-policy format, and give it a different GUID from the example policies. Also, give it a friendly name to help with identification.

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

## Using fsutil to query SmartLocker EA
Customers using Windows Defender Application Control (WDAC) with Managed Installer (MI) or Intelligent Security Graph enabled can use fsutil to determine whether a file was allowed to run by one of these features. This can be achieved by querying the EAs on a file using fsutil and looking for the KERNEL.SMARTLOCKER.ORIGINCLAIM EA. The presence of this EA indicates that either MI or ISG allowed the file to run. This can be used in conjunction with enabling the MI and ISG logging events.

#### Example:
```powershell
fsutil file queryEA C:\Users\Temp\Downloads\application.exe

Extended Attributes (EA) information for file C:\Users\Temp\Downloads\application.exe:

Ea Buffer Offset: 410
Ea Name: $KERNEL.SMARTLOCKER.ORIGINCLAIM
Ea Value Length: 7e
0000: 01 00 00 00 01 00 00 00 00 00 00 00 01 00 00 00 ................
0010: b2 ff 10 66 bc a8 47 c7 00 d9 56 9d 3d d4 20 2a ...f..G...V.=. *
0020: 63 a3 80 e2 d8 33 8e 77 e9 5c 8d b0 d5 a7 a3 11 c....3.w.\......
0030: 83 00 00 00 00 00 00 00 5c 00 00 00 43 00 3a 00 ........\...C.:.
0040: 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 6a 00 \.U.s.e.r.s.\.T.
0050: 6f 00 67 00 65 00 75 00 72 00 74 00 65 00 2e 00 e.m.p..\D.o.w.n...
0060: 52 00 45 00 44 00 4d 00 4f 00 4e 00 44 00 5c 00 l.o.a.d.\a.p.p.l.
0070: 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 i.c.a.t.i.o.n..e.x.e
```

## Enabling managed installer logging events

Refer to [Understanding Application Control Events](event-id-explanations.md#optional-intelligent-security-graph-isg-or-managed-installer-mi-diagnostic-events) for information on enabling optional managed installer diagnostic events.

## Deploying the Managed Installer

Once you've completed configuring your chosen Managed Installer, by specifying which to use in the AppLocker policy, enabling the service enforcement of it, and by enabling the Managed Installer option in a WDAC policy, you'll need to deploy it.

1. Using the following command to deploy the policy.
   ```powershell
   $policyFile=
   @"
   Raw_AppLocker_Policy_XML
   "@
   Set-AppLockerPolicy -XmlPolicy $policyFile -Merge -ErrorAction SilentlyContinue
   ```

2. Verify Deployment of the Rule set was successful
   ```powershell
   Get-AppLockerPolicy -Local
   
   Version RuleCollections RuleCollectionTypes
   ------- --------------- -------------------
   1 {0, 0, 0, 0...} {Appx, Dll, Exe, ManagedInstaller...}
   ```
   Verify the output shows the ManagedInstaller rule set.

3. Get the policy XML (optional) using PS:
   ```powershell
   Get-AppLockerPolicy -Effective -Xml -ErrorVariable ev -ErrorAction SilentlyContinue
   ```
   This command will show the raw XML to verify the individual rules that were set.