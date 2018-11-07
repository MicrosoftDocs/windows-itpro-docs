---
title: Windows Autopilot Self-Deploying mode (Preview) 
description: Gives an overview of Autopilot Plug and Forget and how to use it.
keywords: Autopilot Plug and Forget, Windows 10
ms.prod: w10
ms.technology: Windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype:
ms.localizationpriority: medium
author: greg-lindsay
ms.author: greg-lindsay
ms.date: 10/02/2018
---

# Windows Autopilot Self-Deploying mode (Preview)

**Applies to: Windows 10, build 17672 or later**

Windows Autopilot self-deploying mode offers truly zero touch provisioning. With this mode, all you need to do is power on a device, plug it into Ethernet, and watch Windows Autopilot fully configure the device. No additional user interaction is required.
>[!NOTE]
>In order to display an organization-specific logo and organization name during the Autopilot process, Azure Active Directory Company Branding needs to be configured with the images and text that should be displayed.  See [Quickstart: Add company branding to your sign-in page in Azure AD](https://docs.microsoft.com/azure/active-directory/fundamentals/customize-branding) for more details. 

![The user experience with Windows Autopilot self-deploying mode](images/self-deploy-welcome.png)

>[!NOTE]
>While today there is a “Next” button that must be clicked to continue the deployment process, and an Activities opt-in page in OOBE, both of these will be removed in future Insider Preview builds to enable a completely automated deployment process – no user authentication or user interaction will be required. 
 
Self-deploying mode can register the device into an organization’s Azure Active Directory tenant, enroll the device in the organization’s mobile device management (MDM) provider (leveraging Azure AD for automatic MDM enrollment), and ensure that all policies, applications, certificates, and networking profiles are provisioned on the device before the user ever logs on (levering the enrollment status page to prevent access to the desktop until the device is fully provisioned). 

>[!NOTE]
>Self-deploying mode does not support Active Directory Join or Hybrid Azure AD Join.  All devices will be joined to Azure Active Directory.

Because self-deploying mode uses a device’s TPM 2.0 hardware to authenticate the device into an organization’s Azure AD tenant, devices without TPM 2.0 cannot be used with this mode.

>[!NOTE]
>If you attempt a self-deploying mode deployment on a device that does not have support TPM 2.0 or on a virtual machine, the process will fail when verifying the device with an 0x800705B4 timeout error.

Windows Autopilot self-deploying mode enables you to effortlessly deploy Windows 10 as a kiosk, digital signage device, or a shared device.  When setting up a kiosk, you can leverage the new Kiosk Browser, an app built on Microsoft Edge that can be used to create a tailored, MDM-managed browsing experience. When combined with MDM policies to create a local account and configure it to automatically log on, the complete configuration of the device can be automated. Find out more about these options by reading simplifying kiosk management for IT with Windows 10.  See [Set up a kiosk or digital sign in Intune or other MDM service](https://docs.microsoft.com/windows/configuration/setup-kiosk-digital-signage#set-up-a-kiosk-or-digital-sign-in-intune-or-other-mdm-service) for additional details.
  
Windows Autopilot self-deploying mode is available on Windows 10 build 17672 or higher. When configuring an Autopilot profile in Microsoft Intune, you’ll see a new drop-down menu that asks for the deployment mode. In that menu, select Self-deploying (preview) and apply that profile to the devices you’d like to validate. 

## Step by step

In order to perform a self-deploying mode deployment using Windows Autopilot, the following preparation steps need to be completed:

-   Create an Autopilot profile for self-deploying mode with the desired settings.  In Microsoft Intune, this mode is explicitly chosen when creating the profile. (Note that it is not possible to create a profile in the Microsoft Store for Business or Partner Center for self-deploying mode.)
-   If using Intune, create a device group in Azure Active Directory and assign the Autopilot profile to that group.

For each machine that will be deployed using self-deploying mode, these additional steps are needed:

-   Ensure that the device supports TPM 2.0 and device attestation.  (Note that virtual machines are not supported.)
-   Ensure that the device has been added to Windows Autopilot.  This can be done automatically by an OEM or partner at the time the device is purchased, or it can be done through a manual harvesting process later.  See [Adding devices to Windows Autopilot](add-devices.md) for more information.
-   Ensure an Autopilot profile has been assigned to the device:
    -   If using Intune and Azure Active Directory dynamic device groups, this can be done automatically.
    -   If using Intune and Azure Active Directory static device groups, manually add the device to the device group.
    -   If using other methods (e.g. Microsoft Store for Business or Partner Center), manually assign an Autopilot profile to the device.

## Validation

When performing a self-deploying mode deployment using Windows Autopilot, the following end-user experience should be observed:

-   Once connected to a network, the Autopilot profile will be downloaded.
-   If the Autopilot profile has been configured to automatically configure the language, locale, and keyboard layout, these OOBE screens should be skipped as long as Ethernet connectivity is available.  Otherwise, manual steps are required:
    -   If multiple languages are preinstalled in Windows 10, the user must pick a language.
    -   The user must pick a locale and a keyboard layout, and optionally a second keyboard layout.
-   If connected via Ethernet, no network prompt is expected.  If no Ethernet connection is available and Wi-fi is built in, the user needs to connect to a wireless network.
-   Windows 10 will check for critical OOBE updates, and if any are available they will be automatically installed (rebooting if required).
-   The device will join Azure Active Directory.
-   After joining Azure Active Directory, the device will enroll in Intune (or other configured MDM services).
-   The [enrollment status page](enrollment-status.md) will be displayed.
-   Depending on the device settings deployed, the device will either:
    -   Remain at the logon screen, where any member of the organization can log on by specifying their Azure AD credentials.
    -   Automatically sign in as a local account, for devices configured as a kiosk or digital signage.

In case the observed results do not match these expectations, consult the [Windows Autopilot Troubleshooting](troubleshooting.md) documentation.