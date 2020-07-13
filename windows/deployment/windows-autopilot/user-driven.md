---
title: Windows Autopilot User-Driven Mode
description: Windows Autopilot user-driven mode allows devices to be deployed to a ready-to-use state without requiring help from IT personnel.
keywords: mdm, setup, windows, windows 10, oobe, manage, deploy, autopilot, ztd, zero-touch, partner, msfb, intune
ms.reviewer: mniehaus
manager: laurawi
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.sitesec: library
ms.pagetype: deploy
audience: itpro
author: greg-lindsay
ms.author: greglin
ms.collection: M365-modern-desktop
ms.topic: article
---


# Windows Autopilot user-driven mode

Windows Autopilot user-driven mode is designed to enable new Windows 10 devices to be transformed from their initial state, directly from the factory, into a ready-to-use state without requiring that IT personnel ever touch the device.  The process is designed to be simple so that anyone can complete it, enabling devices to be shipped or distributed to the end user directly with simple instructions:

- Unbox the device, plug it in, and turn it on.
- Choose a language (only required when multiple languages are installed), locale and keyboard.
- Connect it to a wireless or wired network with internet access.  If using wireless, the user must establish the Wi-Fi link.  
- Specify your e-mail address and password for your organization account.

After completing those simple steps, the remainder of the process is completely automated, with the device being joined to the organization, enrolled in Intune (or another MDM service), and fully configured as defined by the organization.  Any additional prompts during the Out-of-Box Experience (OOBE) can be suppressed; see [Configuring Autopilot Profiles](profiles.md) for options that are available.

Windows Autopilot user-driven mode supports Azure Active Directory and Hybrid Azure Active Directory joined devices.  See [What is a device identity](https://docs.microsoft.com/azure/active-directory/devices/overview) for more information about these two join options.

From a process flow perspective, the tasks performed during the user-driven process are as follows:

- Once connected to a network, the device will download a Windows Autopilot profile specifying the settings that should be used (e.g. the prompts during OOBE that should be suppressed).
- Windows 10 will check for critical OOBE updates, and if any are available they will be automatically installed (rebooting if required).
- The user will be prompted for Azure Active Directory credentials, with a customized user experience showing the Azure AD tenant name, logo, and sign-in text.
- The device will join Azure Active Directory or Active Directory, based on the Windows Autopilot profile settings.
- The device will enroll in Intune (or other configured MDM services).  (This occurs as part of the Azure Active Directory join process via MDM auto-enrollment, or before the Active Directory join process, as needed.)
- If configured, the [enrollment status page](enrollment-status.md) (ESP) will be displayed.
- Once the device configuration tasks have completed, the user will be signed into Windows 10 using the credentials they previously provided.  (Note that if the device reboots during the device ESP process, the user will need to re-enter their credentials as these are not persisted across reboots.)
- Once signed in, the enrollment status page will again be displayed for user-targeted configuration tasks.

If any issues are encountered during this process, see the [Windows Autopilot Troubleshooting](troubleshooting.md) documentation.

For more information on the available join options, see the following sections:

- [Azure Active Directory join](#user-driven-mode-for-azure-active-directory-join) is available if devices do not need to be joined to an on-prem Active Directory domain.
- [Hybrid Azure Active Directory join](#user-driven-mode-for-hybrid-azure-active-directory-join) is available for devices that must be joined to both Azure Active Directory and your on-prem Active Directory domain.
- [Hybrid Azure Active Directory join with VPN support](#user-driven-mode-for-hybrid-azure-active-directory-join-with-vpn-support) is available for devices that must be joined to both Azure Active Directory and your on-prem Active Directory domain, but are not connected to the corporate network and must use VPN connectivity.

## User-driven mode for Azure Active Directory join

In order to perform a user-driven deployment using Windows Autopilot, the following preparation steps need to be completed:

- Ensure that the users who will be performing user-driven mode deployments are able to join devices to Azure Active Directory.  See [Configure device settings](https://docs.microsoft.com/azure/active-directory/device-management-azure-portal#configure-device-settings) in the Azure Active Directory documentation for more information.
- Create an Autopilot profile for user-driven mode with the desired settings.  In Microsoft Intune, this mode is explicitly chosen when creating the profile. With Microsoft Store for Business and Partner Center, user-driven mode is the default and does not need to be selected.
- If using Intune, create a device group in Azure Active Directory and assign the Autopilot profile to that group.

For each device that will be deployed using user-driven deployment, these additional steps are needed:

- Ensure that the device has been added to Windows Autopilot.  This can be done automatically by an OEM or partner at the time the device is purchased, or it can be done through a manual harvesting process later.  See [Adding devices to Windows Autopilot](add-devices.md) for more information.
- Ensure an Autopilot profile has been assigned to the device:
  - If using Intune and Azure Active Directory dynamic device groups, this can be done automatically.
  - If using Intune and Azure Active Directory static device groups, manually add the device to the device group.
  - If using other methods (e.g. Microsoft Store for Business or Partner Center), manually assign an Autopilot profile to the device.


## User-driven mode for hybrid Azure Active Directory join

Windows Autopilot requires that devices be Azure Active Directory joined. If you have an on-premises Active Directory environment and want to also join devices to your on-premises domain, you can accomplish this by configuring Autopilot devices to be [hybrid-joined to Azure Active Directory (Azure AD)](https://docs.microsoft.com/azure/active-directory/devices/hybrid-azuread-join-plan).  

### Requirements

To perform a user-driven hybrid Azure AD joined deployment using Windows Autopilot:

- A Windows Autopilot profile for user-driven mode must be created and 
  - **Hybrid Azure AD joined** must be specified as the selected option under **Join to Azure AD as** in the Autopilot profile.
- If using Intune, a device group in Azure Active Directory must exist with the Windows Autopilot profile assigned to that group.
- The device must be running Windows 10, version 1809 or later.
- The device must be able to access an Active Directory domain controller, so it must be connected to the organization's network (where it can resolve the DNS records for the AD domain and the AD domain controller, and communicate with the domain controller to authenticate the user).
- The device must be able to access the Internet, following the [documented Windows Autopilot network requirements](windows-autopilot-requirements.md).
- The Intune Connector for Active Directory must be installed.
  - Note: The Intune Connector will perform an on-prem AD join, therefore users do not need on-prem AD-join permission, assuming the Connector is [configured to perform this action](https://docs.microsoft.com/intune/windows-autopilot-hybrid#increase-the-computer-account-limit-in-the-organizational-unit) on the user's behalf. 
- If using Proxy, WPAD Proxy settings option must be enabled and configured.

The hybrid Azure AD join process uses the system context to register the device to Azure AD, therefore it is not affected by user based Azure AD join permission settings.

## User-driven mode for hybrid Azure Active Directory join with VPN support

Devices that are joined to Active Directory require connectivity to an Active Directory domain controller for a variety of activities, such as user sign-in (validating the user's credentials) and Group Policy application.  As a result, the Windows Autopilot user-driven Hybrid Azure AD Join process would validate that the device is able to contact an Active Directory domain controller by pinging that domain controller.

With the additional of VPN support for this scenario, it is now possible for you to specify to skip that connectivity check during the Hybrid Azure AD Join.  This does not eliminate the need for communicating with an Active Directory domain controller, but rather enables the device to be first prepared with a needed VPN configuration delivered via Intune prior to the user attempting to sign into Windows, allowing connectivity to the organization's network.

### Requirements

The following additional requirements apply for Hybrid Azure AD Join with VPN support:

- A supported version of Windows 10:
  - Windows 10 1903 + December 10th Cumulative update (KB4530684, OS build 18362.535) or higher 
  - Windows 10 1909 + December 10th Cumulative update (KB4530684, OS build 18363.535) or higher  
  - Windows 10 2004 or later 
- Enable the new “Skip domain connectivity check” toggle in the Hybrid Azure AD Join Autopilot profile.
- A VPN configuration that can be deployed via Intune that enables the user to manualy establish a VPN connection from the Windows logon screen, or one that automatically establishes a VPN connection as needed.  

The specific VPN configuration required depends on the VPN software and authentication being used.  For third-party (non-Microsoft) VPN solutions, this typically would involve deploying a Win32 app (containing the VPN client software itself as well as any specific connection information, e.g. VPN endpoint host names) via Intune Management Extensions.  Consult your VPN provider's documentation for configuration details specific to that provider.

> [!NOTE]
> The VPN requirements are not specific to Windows Autopilot. For example, if you have already implemented a VPN configuration to enable remote password resets, where a user needs to log on to Windows with a new password when not on the organization's network, that same configuration can be used with Windows Autopilot.  Once the user has signed in to cache their credentials, subsequent log-on attempts do not need connectivity since the cached credentials can be used. 

In cases where certificate authentication is required by the VPN software, the needed machine certificate should also be deployed via Intune.  This can be done using the Intune certificate enrollment capabilities, targeting the certificate profiles to the device.

Note that user certificates are not supported because these certificates cannot be deployed until the user logs in.  Also, third-party UWP VPN plug-ins delivered from the Windows Store are also not supported because these are not installed until after the user signs in.

### Validation

Before attempting a hybrid Azure AD Join using VPN, it is important to first confirm that a user-driven Hybrid Azure AD Join process can be performed on the organization's network, before adding in the additional requirements described below.  This simplifies troubleshooting by making sure the core process works fine before adding the additional VPN configuration required.

Next, validate that the VPN configuration (Win32 app, certs, and any other requirements) can be deployed via Intune to an existing device that has already been hybrid Azure AD joined.  For example, some VPN clients create a per-machine VPN connection as part of the installation process, so you can validate the configuration using steps such as these:

- From PowerShell, verify that at least one per-machine VPN connection has been created using the "Get-VpnConnection -AllUserConnection" command.
- Attempt to manually start the VPN connection using the command: RASDIAL.EXE "ConnectionName"
- Log out and verify that the "VPN connection" icon can be seen on the Windows logon page.
- Move the device off the corporate network and attempt to establish the connection using the icon on the Windows logon page, signing into an account that does not have cached credentials.

For VPN configurations that automatically connect, the validation steps may be different.

> [!NOTE]
> Always On VPN can be used for this scenario.  See the [Deploy Always On VPN](https://docs.microsoft.com/windows-server/remote/remote-access/vpn/always-on-vpn/deploy/always-on-vpn-deploy-deployment) documentation for more information.  Note that Intune cannot yet deploy the needed per-machine VPN profile. 

To validate the end-to-end process, ensure the needed Windows 10 cumulative update has been installed on Windows 10 1903 or Windows 10 1909. This can be done manually during OOBE by first downloading the latest cumulative from https://catalog.update.microsoft.com and then manually installing it:

- Press Shift-F10 to open a command prompt.
- Insert a USB key containing the downloaded update.
- Install the update using the command (substituting the real file name): WUSA.EXE <filename>.msu /quiet
- Reboot the computer using the command: shutdown.exe /r /t 0

Alternatively, you can invoke Windows Update to install the latest updates through this process:

- Press Shift-F10 to open a command prompt.
- Run the command "start ms-settings:"
- Navigate to the "Update & Security" node and check for updates.
- Reboot after the updates are installed.

## Step by step instructions

See [Deploy hybrid Azure AD joined devices using Intune and Windows Autopilot](https://docs.microsoft.com/intune/windows-autopilot-hybrid).

