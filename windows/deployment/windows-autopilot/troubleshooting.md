---
title: Troubleshooting Windows Autopilot
description: Windows Autopilot deployment
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.reviewer: mniehaus
manager: laurawi
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Troubleshooting Windows Autopilot

**Applies to: Windows 10**

Windows Autopilot is designed to simplify all parts of the Windows device lifecycle, but there are always situations where issues may arise, either due to configuration or other issues.  To assist with troubleshooting efforts, review the following information.

## Troubleshooting process

Regardless of whether performing user-driven or self-deploying device deployments, the troubleshooting process is the mostly the same.  It is useful to understand the flow for a specific device:

-   Network connection established.  This can be a wireless (Wi-fi) or wired (Ethernet) connection.
-   Windows Autopilot profile downloaded.  Whether using a wired connection or manually establishing a wireless connection, the Windows Autopilot profile will be downloaded from the Autopilot deployment service as soon as the network connection is in place.
-   User authentication.  When performing a user-driven deployment, the user will enter their Azure Active Directory credentials, which will be validated.
-   Azure Active Directory join.  For user-driven deployments, the device will be joined to Azure AD using the specified user credentials.  For self-deploying scenarios, the device will be joined without specifying any user credentials.
-   Automatic MDM enrollment.  As part of the Azure AD join process, the device will enroll in the MDM service configured in Azure AD (e.g. Microsoft Intune).
-   Settings are applied.  If the [enrollment status page](enrollment-status.md) is configured, most settings will be applied while the enrollment status page is displayed.  If not configured or available, settings will be applied after the user is signed in.

For troubleshooting, key activities to perform are:

-   Configuration.  Has Azure Active Directory and Microsoft Intune (or an equivalent MDM service) been configured as specified in [Windows Autopilot configuration requirements](windows-autopilot-requirements.md)?
-   Network connectivity.  Can the device access the services described in [Windows Autopilot networking requirements](windows-autopilot-requirements.md)?
-   Autopilot OOBE behavior.  Were only the expected out-of-box experience screens displayed?  Was the Azure AD credentials page customized with organization-specific details as expected?
-   Azure AD join issues.  Was the device able to join Azure Active Directory?
-   MDM enrollment issues.  Was the device able to enroll in Microsoft Intune (or an equivalent MDM service)?

## Troubleshooting Autopilot OOBE issues

If the expected Autopilot behavior does not occur during the out-of-box experience (OOBE), it is useful to see whether the device received an Autopilot profile and what settings that profile contained.  Depending on the Windows 10 release, there are different mechanisms available to do that.

### Windows 10 version 1803 and above

To see details related to the Autopilot profile settings and OOBE flow, Windows 10 version 1803 and above adds event log entries.  These can be viewed using Event Viewer, navigating to the log at **Application and Services Logs –> Microsoft –> Windows –> Provisioning-Diagnostics-Provider –> AutoPilot**.  The following events may be recorded, depending on the scenario and profile configuration.

| Event ID | Type | Description |
|----------|------|-------------| 
| 100 | Warning | “AutoPilot policy [name] not found.”  This is typically a temporary problem, while the device is waiting for an Autopilot profile to be downloaded. |
| 101 | Info | “AutoPilotGetPolicyDwordByName succeeded: policy name = [setting name]; policy value [value].”  This shows Autopilot retrieving and processing numeric OOBE settings. |
| 103 | Info | “AutoPilotGetPolicyStringByName succeeded: policy name = [name]; value = [value].”  This shows Autopilot retrieving and processing OOBE setting strings such as the Azure AD tenant name. |
| 109 | Info | “AutoPilotGetOobeSettingsOverride succeeded:  OOBE setting [setting name]; state = [state].”  This shows Autopilot retrieving and processing state-related OOBE settings. |
| 111 | Info | “AutoPilotRetrieveSettings succeeded.”  This means that the settings stored in the Autopilot profile that control the OOBE behavior have been retrieved successfully. |
| 153 | Info | “AutoPilotManager reported the state changed from [original state] to [new state].”  Typically this should say “ProfileState_Unknown” to “ProfileState_Available” to show that a profile was available for the device and downloaded, so the device is ready to be deployed using Autopilot. |
| 160 | Info | “AutoPilotRetrieveSettings beginning acquisition.”  This shows that Autopilot is getting ready to download the needed Autopilot profile settings. |
| 161 | Info | “AutoPilotManager retrieve settings succeeded.”  The Autopilot profile was successfully downloaded. |
| 163 | Info | “AutoPilotManager determined download is not required and the device is already provisioned.  Clean or reset the device to change this.”  This message indicates that an Autopilot profile is resident on the device; it typically would only be removed by the **Sysprep /Generalize** process. |
| 164 | Info | “AutoPilotManager determined Internet is available to attempt policy download.” |
| 171 | Error | “AutoPilotManager failed to set TPM identity confirmed.  HRESULT=[error code].”  This indicates an issue performing TPM attestation, needed to complete the self-deploying mode process. | 
| 172 | Error | “AutoPilotManager failed to set AutoPilot profile as available.  HRESULT=[error code].”  This is typically related to event ID 171. |

In addition to the event log entries, the registry and ETW trace options described below also work with Windows 10 version 1803 and above.

### Windows 10 version 1709 and above

On Windows 10 version 1709 and above, information about the Autopilot profile settings are stored in the registry on the device after they are received from the Autopilot deployment service.  These can be found at **HKLM\SOFTWARE\Microsoft\Provisioning\Diagnostics\AutoPilot**.  Available registry entries include:

| Value | Description |
|-------|-------------|
| AadTenantId | The GUID of the Azure AD tenant the user signed into.  This should match the tenant that the device was registered with; if it does not match the user will receive an error. |
| CloudAssignedTenantDomain | The Azure AD tenant the device has been registered with, e.g. “contosomn.onmicrosoft.com.”  If the device is not registered with Autopilot, this value will be blank. |
| CloudAssignedTenantId | The GUID of the Azure AD tenant the device has been registered with (the GUID corresponds to the tenant domain from the CloudAssignedTenantDomain registry value).  If the device isn’t registered with Autopilot, this value will be blank.|
| IsAutoPilotDisabled | If set to 1, this indicates that the device is not registered with Autopilot.  This could also indicate that the Autopilot profile could not be downloaded due to network connectivity or firewall issues, or network timeouts. |
| TenantMatched | This will be set to 1 if the tenant ID of the user matches the tenant ID that the device was registered with.  If this is 0, the user would be shown an error and forced to start over. |
| CloudAssignedOobeConfig | This is a bitmap that shows which Autopilot settings were configured.  Values include: SkipCortanaOptIn = 1, OobeUserNotLocalAdmin = 2, SkipExpressSettings = 4, SkipOemRegistration = 8, SkipEula = 16 |

### Windows 10 version 1703 and above

On Windows 10 version 1703 and above, ETW tracing can be used to capture detailed information from Autopilot and related components.  The resulting ETW trace files can then be viewed using the Windows Performance Analyzer or similar tools.  See [the advanced troubleshooting blog](https://blogs.technet.microsoft.com/mniehaus/2017/12/13/troubleshooting-windows-autopilot-level-300400/) for more information.

## Troubleshooting Azure AD Join issues

The most common issue joining a device to Azure AD is related to Azure AD permissions.  Ensure [the correct configuration is in place](windows-autopilot-requirements.md) to allow users to join devices to Azure AD.  Errors can also happen if the user has exceeded the number of devices that they are allowed to join, as configured in Azure AD.

Error code 801C0003 will typically be reported on an error page titled "Something went wrong".  This error means that the Azure AD join failed.

## Troubleshooting Intune enrollment issues

See [this knowledge base article](https://support.microsoft.com/help/4089533/troubleshooting-windows-device-enrollment-problems-in-microsoft-intune) for assistance with Intune enrollment issues.  Common issues include incorrect or missing licenses assigned to the user or too many devices enrolled for the user.

Error code 80180018 will typically be reported on an error page titled "Something went wrong".  This error means that the MDM enrollment failed.

If Autopilot Reset fails immediately with an error "Ran into trouble. Please sign in with an administrator account to see why and reset manually," see [Troubleshoot Autopilot Reset](https://docs.microsoft.com/education/windows/autopilot-reset#troubleshoot-autopilot-reset) for more help.

## Profile download

When an Internet-connected Windows 10 device boots up, it will attempt to connect to the Autopilot service and download an Autopilot profile. Note: It is important that a profile exists at this stage so that a blank profile is not cached locally on the PC. To remove the currently cached local profile in Windows 10 version 1803 and earlier, it is necessary to re-generalize the OS using **sysprep /generalize /oobe**, reinstall the OS, or re-image the PC. In Windows 10 version 1809 and later, you can retrieve a new profile by rebooting the PC.

When a profile is downloaded depends on the version of Windows 10 that is running on the PC. See the following table.

| Windows 10 version | Profile download behavior |
| --- | --- |
| 1703 and 1709 | The profile is downloaded after the OOBE network connection page. This page is not displayed when using a wired connection. In this case, the profile is downloaded just prior to the EULA screen. |
| 1803 | The profile is downloaded as soon as possible.  If wired, it is downloaded at the start of OOBE. If wireless, it is downloaded after the network connection page. |
| 1809 | The profile is downloaded as soon as possible (same as 1803), and again after each reboot. |

If you need to reboot a computer during OOBE: 
- Press Shift-F10 to open a command prompt.
- Enter **shutdown /r /t 0** to restart immediately, or **shutdown /s /t 0** to shutdown immediately.

For more information, see [Windows Setup Command-Line Options](https://docs.microsoft.com/windows-hardware/manufacture/desktop/windows-setup-command-line-options).