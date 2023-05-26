---
title: Configure User Account Control
description: Learn about the User Account Control settings and how to configure them via Intune, CSP, group policy and registry.
ms.date: 05/26/2023
ms.topic: how-to
---

# Configure User Account Control

The following table lists the available settings to configure the UAC behavior, and their default values.  

|Setting name| Description|Default value|
|-|-|-|
|Run all administrators in Admin Approval Mode|Controls the behavior of all UAC policy settings.<br><br>**Enabled**: Admin Approval Mode is enabled. This policy must be enabled and related UAC settings configured. The policy allows the built-in Administrator account and members of the Administrators group to run in Admin Approval Mode.<br>**Disabled**: Admin Approval Mode and all related UAC policy settings are disabled. Note: If this policy setting is disabled, the Windows Security app notifies you that the overall security of the operating system has been reduced.|Enabled|
|Admin Approval Mode for the Built-in Administrator account|Controls the behavior of Admin Approval Mode for the built-in Administrator account.<br><br>**Enabled**: The built-in Administrator account uses Admin Approval Mode. By default, any operation that requires elevation of privilege will prompt the user to approve the operation.<br>**Disabled** : The built-in Administrator account runs all applications with full administrative privilege.|Disabled|
|Switch to the secure desktop when prompting for elevation|This policy setting controls whether the elevation request prompt is displayed on the interactive user's desktop or the secure desktop.<br><br>**Enabled**: All elevation requests go to the secure desktop regardless of prompt behavior policy settings for administrators and standard users.<br>**Disabled**: All elevation requests go to the interactive user's desktop. Prompt behavior policy settings for administrators and standard users are used.|Enabled|
|Behavior of the elevation prompt for administrators in Admin Approval Mode|Controls the behavior of the elevation prompt for administrators.<br><br>**Elevate without prompting**: Allows privileged accounts to perform an operation that requires elevation without requiring consent or credentials. **Use this option only in the most constrained environments**.<br>**Prompt for credentials on the secure desktop**: When an operation requires elevation of privilege, the user is prompted on the secure desktop to enter a privileged user name and password. If the user enters valid credentials, the operation continues with the user's highest available privilege.<br>**Prompt for consent on the secure desktop**: When an operation requires elevation of privilege, the user is prompted on the secure desktop to select either Permit or Deny. If the user selects Permit, the operation continues with the user's highest available privilege.<br>**Prompt for credentials**: When an operation requires elevation of privilege, the user is prompted to enter an administrative user name and password. If the user enters valid credentials, the operation continues with the applicable privilege.<br>**Prompt for consent**: When an operation requires elevation of privilege, the user is prompted to select either Permit or Deny. If the user selects Permit, the operation continues with the user's highest available privilege.<br>**Prompt for consent for non-Windows binaries**: When an operation for a non-Microsoft application requires elevation of privilege, the user is prompted on the secure desktop to select either Permit or Deny. If the user selects Permit, the operation continues with the user's highest available privilege.|Prompt for consent for non-Windows binaries|
|Behavior of the elevation prompt for standard users|Controls the behavior of the elevation prompt for standard users.<br><br>**Prompt for credentials**: When an operation requires elevation of privilege, the user is prompted to enter an administrative user name and password. If the user enters valid credentials, the operation continues with the applicable privilege.<br>**Automatically deny elevation requests**: When an operation requires elevation of privilege, a configurable access denied error message is displayed. An enterprise that is running desktops as standard user may choose this setting to reduce help desk calls.<br>**Prompt for credentials on the secure desktop** When an operation requires elevation of privilege, the user is prompted on the secure desktop to enter a different user name and password. If the user enters valid credentials, the operation continues with the applicable privilege.|Prompt for credentials|
|Detect application installations and prompt for elevation|Controls the behavior of application installation detection for the computer.<br><br>**Enabled**: When an app installation package is detected that requires elevation of privilege, the user is prompted to enter an administrative user name and password. If the user enters valid credentials, the operation continues with the applicable privilege.<br>**Disabled**: App installation packages aren't detected and prompted for elevation. Enterprises that are running standard user desktops and use delegated installation technologies, such as Microsoft Intune, should disable this policy setting. In this case, installer detection is unnecessary. |Enabled|
|Only elevate executables that are signed and validated|Enforces signature checks for any interactive applications that request elevation of privilege. IT admins can control which applications are allowed to run by adding certificates to the Trusted Publishers certificate store on local devices.<br><br>**Enabled**: Enforces the certificate certification path validation for a given executable file before it's permitted to run.<br>**Disabled**: Doesn't enforce the certificate certification path validation before a given executable file is permitted to run.|Disabled|
|Only elevate UIAccess applications that are installed in secure locations|Controls whether applications that request to run with a User Interface Accessibility (UIAccess) integrity level must reside in a secure location in the file system. Secure locations are limited to the following folders:<br>- `Program Files`, including subfolders<br>- `\Windows\\system32\`<br>- `\Program Files (x86)\`, including subfolders<br><br><br>**Enabled**: If an app resides in a secure location in the file system, it runs only with UIAccess integrity.<br>**Disabled**: An app runs with UIAccess integrity even if it doesn't reside in a secure location in the file system.<br><br>**Note:** Windows enforces a digital signature check on any interactive apps that requests to run with a UIAccess integrity level regardless of the state of this setting.|Enabled|
|Allow UIAccess applications to prompt for elevation without using the secure desktop|Controls whether User Interface Accessibility (UIAccess or UIA) programs can automatically disable the secure desktop for elevation prompts used by a standard user.<br><br>**Enabled**: UIA programs, including Remote Assistance, automatically disable the secure desktop for elevation prompts. If you don't disable the **Switch to the secure desktop when prompting for elevation** policy setting, the prompts appear on the interactive user's desktop instead of the secure desktop.<br>**Disabled**: The secure desktop can be disabled only by the user of the interactive desktop or by disabling the **Switch to the secure desktop when prompting for elevation** policy setting.|Disabled|
|Virtualize File And Registry Write Failures To Per User Locations|Controls whether application write failures are redirected to defined registry and file system locations. This setting mitigates applications that run as administrator and write run-time application data to `%ProgramFiles%`, `%Windir%`, `%Windir%\system32`, or `HKLM\Software`.<br><br>**Enabled**: App write failures are redirected at run time to defined user locations for both the file system and registry.<br>**Disabled**: Apps that write data to protected locations fail.|Enabled|

## User Account Control configuration

To configure UAC you can use:

- Microsoft Intune/MDM
- Group policy
- Registry

Follow the instructions below to configure your devices, selecting the option that best suits your needs.


#### [:::image type="icon" source="../../../images/icons/intune.svg" border="false"::: **Intune**](#tab/intune)

### Configure UAC with a Settings catalog policy

To configure devices using a Settings catalog policy follow these steps:

Alternatively, configure UAC using the [LocalPoliciesSecurityOptions Policy CSP](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-localpoliciessecurityoptions).

#### [:::image type="icon" source="../../../images/icons/group-policy.svg" border="false"::: **Group policy**](#tab/gpo)

You can use security policies to configure how User Account Control works in your organization. They can be configured locally by using the Local Security Policy snap-in (secpol.msc) or configured for the domain, OU, or specific groups by Group Policy.

These policy settings are located in `Security Settings\Local Policies\Security Options` in the Local Security Policy snap-in.

| Group Policy setting |Default |
| - | - | 
|User Account Control: Run all administrators in Admin Approval Mode| Enabled |
|User Account Control: Admin Approval Mode for the built-in Administrator account|  Disabled |
|User Account Control: Switch to the secure desktop when prompting for elevation |  Enabled |
|User Account Control: Behavior of the elevation prompt for administrators in Admin Approval Mode| Prompt for consent for non-Windows binaries |
|User Account Control: Behavior of the elevation prompt for standard users | Prompt for credentials |
|User Account Control: Detect application installations and prompt for elevation| Enabled (default for home only)<br />Disabled (default) |
|User Account Control: Only elevate executables that are signed and validated| Disabled |
|User Account Control: Only elevate UIAccess applications that are installed in secure locations | Enabled |
|User Account Control: Allow UIAccess applications to prompt for elevation without using the secure desktop| Disabled |
|User Account Control: Virtualize file and registry write failures to per-user locations | Enabled |

#### [:::image type="icon" source="../../../images/icons/windows-os.svg" border="false"::: **Registry**](#tab/reg)

The registry keys are found in the path: `HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System`.  

| Registry key name | Setting name | Value |
| - | - | - |
| `EnableLUA` | Run all administrators in Admin Approval Mode | 0 = Disabled<br>1 (Default) = Enabled |
| `FilterAdministratorToken` |Admin Approval Mode for the built-in Administrator account | 0 (Default) = Disabled<br>1 = Enabled |
| `PromptOnSecureDesktop` | Switch to the secure desktop when prompting for elevation| 0 = Disabled<br>1 (Default) = Enabled |
| `ConsentPromptBehaviorAdmin` | Behavior of the elevation prompt for administrators in Admin Approval Mode| 0 = Elevate without prompting<br />1 = Prompt for credentials on the secure desktop<br />2 = Prompt for consent on the secure desktop<br />3 = Prompt for credentials<br />4 = Prompt for consent<br />5 (Default) = Prompt for consent for non-Windows binaries<br /> |
| `ConsentPromptBehaviorUser` | Behavior of the elevation prompt for standard users | 0 = Automatically deny elevation requests<br />1 = Prompt for credentials on the secure desktop<br />3 (Default) = Prompt for credentials |
| `EnableInstallerDetection` |Detect application installations and prompt for elevation | 1 = Enabled (default for home only)<br />0 = Disabled (default) |
| `ValidateAdminCodeSignatures` | Only elevate executables that are signed and validated | 0 (Default) = Disabled<br/>1 = Enabled |
| `EnableSecureUIAPaths` | Only elevate UIAccess applications that are installed in secure locations | 0 = Disabled<br />1 (Default) = Enabled |
| `EnableUIADesktopToggle` | Allow UIAccess applications to prompt for elevation without using the secure desktop| 0 (Default) = Disabled<br />1 = Enabled |
| `EnableVirtualization` | Virtualize file and registry write failures to per-user locations | 0 = Disabled<br />1 (Default) = Enabled |

---

