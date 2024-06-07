---
title: Provisioning packages overview
description: With Windows 10 and Windows 11, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image. Learn about what provisioning packages, are and what they do.
ms.reviewer: kevinsheehan
ms.topic: conceptual
ms.date: 12/31/2017
---

# Provisioning packages for Windows

Windows provisioning makes it easy for IT administrators to configure end-user devices without imaging. When you use Windows provisioning, an IT administrator can easily specify the desired configuration and settings required to enroll the devices into management. Then, apply that configuration to target devices in a matter of minutes. It's best suited for small- to medium-sized businesses with deployments that range from tens to a few hundred computers.

A provisioning package (.ppkg) is a container for a collection of configuration settings. With Windows client, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image.

Provisioning packages are simple enough that with a short set of written instructions, a student, or non-technical employee can use them to configure their device. It can result in a significant reduction in the time required to configure multiple devices in your organization.

<!-- The [Windows Assessment and Deployment Kit (ADK) for Windows 10](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit) includes the Windows Configuration Designer, a tool for configuring provisioning packages.-->

Windows Configuration Designer is available as an [app in the Microsoft Store](https://www.microsoft.com/store/apps/9nblggh4tx22).

<!--## New in Windows 10, version 1703-->

<!-- - The tool for creating provisioning packages is renamed Windows Configuration Designer, replacing the Windows Configuration Designer (WCD) tool. The components for creating images have been removed from Windows Configuration Designer, which now provides access to runtime settings only. -->
<!-- - Windows Configuration Designer can still be installed from the Windows ADK. You can also install it from the Microsoft Store. -->
<!-- - Windows Configuration Designer adds more wizards to make it easier to create provisioning packages for specific scenarios. See [What you can configure](#configuration-designer-wizards) for wizard descriptions. -->
<!-- - The  Provision desktop devices wizard (previously called Simple provisioning) now enables joining Azure Active Directory (Azure AD) domains and also allows you to remove non-Microsoft software from Windows desktop devices during provisioning. -->
<!-- - When provisioning packages are applied to a device, a status screen indicates successful or failed provisioning. -->
<!-- - Windows 10 includes PowerShell cmdlets that simplify scripted provisioning. Using these cmdlets, you can add provisioning packages, remove provisioning packages and generate log files to investigate provisioning errors.-->
<!-- - The Provision school devices wizard is removed from Windows Configuration Designer. Instead, use the [Setup School PCs app](https://www.microsoft.com/store/p/set-up-school-pcs/9nblggh4ls40) from the Microsoft Store. -->

## Benefits of provisioning packages

Provisioning packages let you:

- Quickly configure a new device without going through the process of installing a new image.
- Save time by configuring multiple devices using one provisioning package.
- Quickly configure employee-owned devices in an organization without a mobile device management (MDM) infrastructure.
- Set up a device without the device having network connectivity.

Provisioning packages can be:

- Installed using removable media such as an SD card or USB flash drive.
- Attached to an email.
- Downloaded from a network share.
- Deployed in NFC tags or barcodes.

## What you can configure

### Configuration Designer wizards

The following table describes settings that you can configure using the wizards in Windows Configuration Designer to create provisioning packages.

| Step | Description | Desktop wizard | Kiosk wizard | HoloLens wizard |
| --- | --- | --- | --- | --- |
| Set up device | Assign device name, enter product key to upgrade Windows, configure shared use, remove pre-installed software | ✅ | ✅ | ✅ |
| Set up network | Connect to a Wi-Fi network | ✅ | ✅ | ✅ |
| Account management | Enroll device in Active Directory, enroll device in Microsoft Entra ID, or create a local administrator account | ✅ | ✅ | ✅ |
| Bulk Enrollment in Microsoft Entra ID | Enroll device in Microsoft Entra ID using Bulk Token</br></br> [Set up Microsoft Entra join in your organization](/azure/active-directory/active-directory-azureadjoin-setup), before you use Windows Configuration Designer wizard to configure bulk Microsoft Entra enrollment. | ✅ | ✅ | ✅ |
| Add applications | Install applications using the provisioning package.  | ✅ | ✅ | ❌ |
| Add certificates | Include a certificate file in the provisioning package. | ✅ | ✅ | ✅ |
| Configure kiosk account and app | Create local account to run the kiosk mode app, specify the app to run in kiosk mode | ❌ | ✅ | ❌ |
| Configure kiosk common settings | Set tablet mode, configure welcome and shutdown screens, turn off timeout settings | ❌ | ✅ | ❌ |
| Developer Setup | Enable Developer Mode  | ❌ | ❌ | ✅ |

- [Instructions for the desktop wizard](provision-pcs-for-initial-deployment.md)
- [Instructions for the kiosk wizard](../kiosk-single-app.md#wizard)
- [Instructions for the HoloLens wizard](/hololens/hololens-provisioning#wizard)

>[!NOTE]
>After you start a project using a Windows Configuration Designer wizard, you can switch to the advanced editor to configure additional settings in the provisioning package.

### Configuration Designer advanced editor

The following table provides some examples of settings that you can configure using the Windows Configuration Designer advanced editor to create provisioning packages.

| Customization options |  Examples  |
|---|---|
| Bulk Active Directory join and device name | Join devices to Active Directory domain and assign device names using hardware-specific serial numbers or random characters |
| Applications  |   Windows apps, line-of-business applications  |
| Bulk enrollment into MDM  | Automatic enrollment into a third-party MDM service <br/><br/>Using a provisioning package for auto-enrollment to Microsoft Intune isn't supported. To enroll devices, use the Configuration Manager console. |
| Certificates | Root certification authority (CA), client certificates |
| Connectivity profiles | Wi-Fi, proxy settings, Email   |
| Enterprise policies | Security restrictions (password, device lock, camera, and so on), encryption, update settings |
| Data assets | Documents, music, videos, pictures  |
| Start menu customization | Start menu layout, application pinning  |
| Other | Home and lock screen wallpaper, computer name, domain join, DNS settings, and so on  |

For details about the settings you can customize in provisioning packages, see [Windows Provisioning settings reference]( https://go.microsoft.com/fwlink/p/?LinkId=619012).

<!-- ## Changes to provisioning in Windows 10, version 1607 -->

<!-- > [!NOTE] -->
<!-- > This section is retained for customers using Windows 10, version 1607, on the Current Branch for Business. Some of this information is not applicable in Windows 10, version 1701. -->

WCD, simplified common provisioning scenarios.

:::image type="content" source="images/icd.png" alt-text="Configuration Designer options":::

WCD supports the following scenarios for IT administrators:

- **Simple provisioning** - Enables IT administrators to define a desired configuration in WCD and then apply that configuration on target devices. The simple provisioning wizard makes the entire process quick and easy by guiding an IT administrator through common configuration settings in a step-by-step manner.

  [Learn how to use simple provisioning to configure Windows computers.](provision-pcs-for-initial-deployment.md)

- **Advanced provisioning (deployment of classic (Win32) and Universal Windows Platform (UWP) apps, and certificates)** - Allows an IT administrator to use WCD to open provisioning packages in the advanced settings editor and include apps for deployment on end-user devices.

- **Mobile device enrollment into management** - Enables IT administrators to purchase off-the-shelf retail Windows devices and enroll them into mobile device management (MDM) before handing them to end users in the organization. IT administrators can use WCD to specify the management endpoint and apply the configuration on target devices by connecting them to a Windows PC (tethered deployment) or through an SD card. Supported management end-points include:

  - Microsoft Intune (certificate-based enrollment)
  - AirWatch (password-string based enrollment)
  - MobileIron (password-string based enrollment)
  - Other MDMs (cert-based enrollment)

<!--  > [!NOTE] -->
<!--  > Windows ICD in Windows 10, version 1607, also provided a wizard to create provisioning packages for school PCs. To learn more, see [Set up students' PCs to join domain](/education/windows/). -->

## Related articles

- [How provisioning works in Windows client](provisioning-how-it-works.md)
- [Install Windows Configuration Designer](provisioning-install-icd.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Apply a provisioning package](provisioning-apply-package.md)
- [Settings changed when you uninstall a provisioning package](provisioning-uninstall-package.md)
- [Provision PCs with common settings for initial deployment (simple provisioning)](provision-pcs-for-initial-deployment.md)
- [Use a script to install a desktop app in provisioning packages](provisioning-script-to-install-app.md)
- [PowerShell cmdlets for provisioning Windows client (reference)](provisioning-powershell.md)
- [Windows Configuration Designer command-line interface (reference)](provisioning-command-line.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)
