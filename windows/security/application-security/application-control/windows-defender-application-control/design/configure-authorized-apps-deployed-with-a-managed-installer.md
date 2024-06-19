---
title: Allow apps deployed with a WDAC managed installer
description: Explains how to configure a custom Managed Installer.
ms.localizationpriority: medium
ms.date: 02/02/2023
ms.topic: how-to
---

# Automatically allow apps deployed by a managed installer with Windows Defender Application Control

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](../feature-availability.md).

Windows Defender Application Control (WDAC) includes an option called **managed installer** that helps balance security and manageability when enforcing application control policies. This option lets you automatically allow applications installed by a designated software distribution solution, such as Microsoft Configuration Manager (MEMCM) or Microsoft Intune.

## How does a managed installer work?

Managed installer uses a special rule collection in **AppLocker** to designate binaries that are trusted by your organization as an authorized source for application installation. When one of these trusted binaries runs, Windows monitors the binary's process (and any child processes it launches) and watches for files being written to disk. As files are written, they're tagged as originating from a managed installer.

You can then configure WDAC to trust files that are installed by a managed installer by adding the "Enabled:Managed Installer" option to your WDAC policy. When that option is set, WDAC will check for managed installer origin information when determining whether or not to allow a binary to run. As long as there are no deny rules for the binary, WDAC will allow it to run based purely on its managed installer origin.

## Security considerations with managed installer

Since managed installer is a heuristic-based mechanism, it doesn't provide the same security guarantees as explicit allow or deny rules do. Managed installer is best suited where users operate as standard user, and where all software is deployed and installed by a software distribution solution such as MEMCM.

Users with administrator privileges, or malware running as an administrator user on the system, may be able to circumvent the intent of your WDAC policies when the managed installer option is allowed.

If a managed installer process runs in the context of a user with standard privileges, then it's possible that standard users or malware running as standard user may be able to circumvent the intent of your WDAC policies.

Some application installers may automatically run the application at the end of the installation process. If the application runs automatically, and the installer was run by a managed installer, then the managed installer's heuristic tracking and authorization will extend to all files that are created during the first run of the application. This extension could result in unintentional authorization of an executable. To avoid that, ensure that the method of application deployment that is used as a managed installer limits running applications as part of installation.

## Known limitations with managed installer

- Application control, based on managed installer, doesn't support applications that self-update. If an application that was deployed by a managed installer later updates itself, the updated application files won't include the origin information from the managed installer, and they might not be able to run. When you rely on managed installers, you must deploy and install all application updates by using a managed installer, or include rules to authorize the app in the WDAC policy. In some cases, it may be possible to also designate an application binary that performs self-updates as a managed installer. Proper review for functionality and security should be performed for the application before using this method.

- Some applications or installers may extract, download, or generate binaries and immediately attempt to run them. Files run by such a process may not be allowed by the managed installer heuristic. In some cases, it may be possible to also designate an application binary that performs such an operation as a managed installer. Proper review for functionality and security should be performed for the application before using this method.

- The managed installer heuristic doesn't authorize kernel drivers. The WDAC policy must have rules that allow the necessary drivers to run.

## Configure managed installer tracking with AppLocker and WDAC

To turn on managed installer tracking, you must:

- Create and deploy an AppLocker policy that defines your managed installer rules and enables services enforcement for executables and DLLs.
- Enable AppLocker's Application Identity and AppLockerFltr services.

> [!NOTE]
> The managed installer AppLocker policy below is designed to be safely merged with any pre-existing AppLocker policies and won't change the behavior of those policies. However, if applied on a device that doesn't currently have any AppLocker policy, you will see a large increase in warning events generated in the *AppLocker - EXE and DLL* event log. If you're using an event forwarding and collection service, like LogAnalytics, you may want to adjust the configuration for that event log to only collect Error events or stop collecting events from that log altogether.

> [!NOTE]
> MEMCM will automatically configure itself as a managed installer, and enable the required AppLocker components, if you deploy one of its inbox WDAC policies. If you are configuring MEMCM as a managed installer using any other method, additional setup is required. Use the [**ManagedInstaller** cmdline switch in your ccmsetup.exe setup](/mem/configmgr/core/clients/deploy/about-client-installation-properties#managedinstaller). Or you can deploy one of the MEMCM inbox audit mode policies alongside your custom policy.

### Create and deploy an AppLocker policy that defines your managed installer rules and enables services enforcement for executables and DLLs

The AppLocker policy creation UI in GPO Editor and the AppLocker PowerShell cmdlets can't be directly used to create rules for the Managed Installer rule collection. However, you can use an XML or text editor to convert an EXE rule collection policy into a ManagedInstaller rule collection.

> [!NOTE]
> Only EXE file types can be designated as managed installers.

1. Use [New-AppLockerPolicy](/powershell/module/applocker/new-applockerpolicy?view=win10-ps&preserve-view=true) to make an EXE rule for the file you're designating as a managed installer. This example creates a rule for Microsoft's Intune Management Extension using the Publisher rule type, but any AppLocker rule type can be used. You may need to reformat the output for readability.

    ```powershell
    Get-ChildItem ${env:ProgramFiles(x86)}'\Microsoft Intune Management Extension\Microsoft.Management.Services.IntuneWindowsAgent.exe' | Get-AppLockerFileInformation | New-AppLockerPolicy -RuleType Publisher -User Everyone -Xml > AppLocker_MI_PS_ISE.xml
    ```

2. Manually change the rule collection Type from "Exe" to "ManagedInstaller" and set EnforcementMode to "AuditOnly"

    Change:

    ```XML
    <RuleCollection Type="Exe" EnforcementMode="NotConfigured">
    ```

    to:

    ```XML
    <RuleCollection Type="ManagedInstaller" EnforcementMode="AuditOnly">
    ```

3. Manually edit your AppLocker policy and add the EXE and DLL rule collections with at least one rule for each. To ensure your policy can be safely applied on systems that may already have an active AppLocker policy, we recommend using a benign DENY rule to block a fake binary and set the rule collection's EnforcementMode to AuditOnly. Additionally, since many installation processes rely on services, you need to enable services tracking for each of those rule collections. The following example shows a partial AppLocker policy with the EXE and DLL rule collection configured as recommended.

    ```xml
    <RuleCollection Type="Dll" EnforcementMode="AuditOnly" >
      <FilePathRule Id="86f235ad-3f7b-4121-bc95-ea8bde3a5db5" Name="Benign DENY Rule" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
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
      <FilePathRule Id="9420c496-046d-45ab-bd0e-455b2649e41e" Name="Benign DENY Rule" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
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

4. Verify your AppLocker policy. The following example shows a complete AppLocker policy that sets Configuration Manager and Microsoft Intune as managed installers. Only those AppLocker rule collections that have actual rules defined are included in the final XML. This condition-based inclusion ensures the policy will merge successfully on devices that may already have an AppLocker policy in place.

    ```xml
    <AppLockerPolicy Version="1">
      <RuleCollection Type="Dll" EnforcementMode="AuditOnly" >
        <FilePathRule Id="86f235ad-3f7b-4121-bc95-ea8bde3a5db5" Name="Benign DENY Rule" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
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
        <FilePathRule Id="9420c496-046d-45ab-bd0e-455b2649e41e" Name="Benign DENY Rule" Description="" UserOrGroupSid="S-1-1-0" Action="Deny">
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
      <RuleCollection Type="ManagedInstaller" EnforcementMode="AuditOnly">
        <FilePublisherRule Id="55932f09-04b8-44ec-8e2d-3fc736500c56" Name="MICROSOFT.MANAGEMENT.SERVICES.INTUNEWINDOWSAGENT.EXE version 1.39.200.2 or greater in MICROSOFT&reg; INTUNE&trade; from O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" Description="" UserOrGroupSid="S-1-1-0" Action="Allow">
          <Conditions>
              <FilePublisherCondition PublisherName="O=MICROSOFT CORPORATION, L=REDMOND, S=WASHINGTON, C=US" ProductName="*" BinaryName="MICROSOFT.MANAGEMENT.SERVICES.INTUNEWINDOWSAGENT.EXE">
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
        </RuleCollection>
      </AppLockerPolicy>
      ```

5. Deploy your AppLocker managed installer configuration policy. You can either import your AppLocker policy and deploy with Group Policy or use a script to deploy the policy with the Set-AppLockerPolicy cmdlet as shown in the following PowerShell command.

   ```powershell
   Set-AppLockerPolicy -XmlPolicy <AppLocker XML FilePath> -Merge -ErrorAction SilentlyContinue
   ```

6. If deploying your AppLocker policy via script, use appidtel.exe to configure the AppLocker Application Identity service and AppLocker filter driver.

    ```console
    appidtel.exe start [-mionly]
    ```

    Specify "-mionly" if you don't plan to use the Intelligent Security Graph (ISG).

> [!NOTE]
> Managed installer tracking will start the next time a process runs that matches your managed installer rules. If an intended process is already running, you must restart it.

## Enable the managed installer option in WDAC policy

In order to enable trust for the binaries laid down by managed installers, the "Enabled: Managed Installer" option must be specified in your WDAC policy.
This setting can be defined by using the [Set-RuleOption cmdlet](/powershell/module/configci/set-ruleoption) with Option 13.

Below are steps to create a WDAC policy that allows Windows to boot and enables the managed installer option.

1. Copy the DefaultWindows_Audit policy into your working folder from "C:\Windows\schemas\CodeIntegrity\ExamplePolicies\DefaultWindows_Audit.xml"

2. Reset the policy ID to ensure that it is in multiple-policy format, and give it a different GUID from the example policies. Also, give it a friendly name to help with identification.

    For example:

    ```powershell
    Set-CIPolicyIdInfo -FilePath <XML filepath> -PolicyName "<friendly name>" -ResetPolicyID
    ```

3. Set Option 13 (Enabled:Managed Installer).

    ```powershell
    Set-RuleOption -FilePath <XML filepath> -Option 13
    ```

4. Deploy your WDAC policy. See [Deploying Windows Defender Application Control (WDAC) policies](../deployment/wdac-deployment-guide.md).

> [!NOTE]
> Your WDAC policy must include rules for all system/boot components, kernel drivers, and any other authorized applications that can't be deployed through a managed installer.

## Remove Managed Installer feature

To remove the Managed Installer feature from the device, you'll need to remove the Managed Installer AppLocker policy from the device by following the instructions at [Delete an AppLocker rule: Clear AppLocker policies on a single system or remote systems](../applocker/delete-an-applocker-rule.md#to-clear-applocker-policies-on-a-single-system-or-remote-systems).

## Related articles

- [Managed installer and ISG technical reference and troubleshooting guide](../operations/configure-wdac-managed-installer.md)
