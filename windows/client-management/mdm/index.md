---
title: Mobile device management
description: Windows 10 provides an enterprise management solution to help IT pros manage company security policies and business applications, while avoiding compromise of the users’ privacy on their personal devices.
MS-HAID:
- 'p\_phDeviceMgmt.provisioning\_and\_device\_management'
- 'p\_phDeviceMgmt.mobile\_device\_management\_windows\_mdm'
ms.assetid: 50ac90a7-713e-4487-9cb9-b6d6fdaa4e5b
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 01/25/2019
---

# Mobile device management


Windows 10 provides an enterprise management solution to help IT pros manage company security policies and business applications, while avoiding compromise of the users’ privacy on their personal devices. A built-in management component can communicate with the management server.

There are two parts to the Windows 10 management component:

-   The enrollment client, which enrolls and configures the device to communicate with the enterprise management server.
-   The management client, which periodically synchronizes with the management server to check for updates and apply the latest policies set by IT.

Third-party MDM servers can manage Windows 10 by using the MDM protocol. The built-in management client is able to communicate with a third-party server proxy that supports the protocols outlined in this document to perform enterprise management tasks. The third-party server will have the same consistent first-party user experience for enrollment, which also provides simplicity for Windows 10 users. MDM servers do not need to create or download a client to manage Windows 10. For details about the MDM protocols, see [\[MS-MDM\]: Mobile Device Management Protocol](https://go.microsoft.com/fwlink/p/?LinkId=619346) and [\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2](https://go.microsoft.com/fwlink/p/?LinkId=619347).

## MDM security baseline

With Windows 10, version 1809, Microsoft is also releasing a Microsoft MDM security baseline that functions like the Microsoft GP-based security baseline. You can easily integrate this baseline into any MDM to support IT pros’ operational needs, addressing security concerns for modern cloud-managed devices.

> [!NOTE]
>Intune support for the MDM security baseline is coming soon.

The MDM security baseline includes policies that cover the following areas:

- Microsoft inbox security technology (not deprecated) such as Bitlocker, Smartscreen, and DeviceGuard (virtual-based security), ExploitGuard, Defender, and Firewall
- Restricting remote access to devices
- Setting credential requirements for passwords and PINs
- Restricting use of legacy technology
- Legacy technology policies that offer alternative solutions with modern technology
- And much more

For more details about the MDM policies defined in the MDM security baseline and what Microsoft’s recommended baseline policy values are, see:
- [MDM Security baseline for Windows 10, version 1903](https://download.microsoft.com/download/2/C/4/2C418EC7-31E0-4A74-8928-6DCD512F9A46/1903-MDM-SecurityBaseLine-Document.zip)

- [MDM Security baseline for Windows 10, version 1809](https://download.microsoft.com/download/2/C/4/2C418EC7-31E0-4A74-8928-6DCD512F9A46/1809-MDM-SecurityBaseLine-Document-[Preview].zip)

For information about the MDM policies defined in the Intune security baseline public preview, see [Windows security baseline settings for Intune](https://docs.microsoft.com/intune/security-baseline-settings-windows)


<span id="mmat" />
## Learn about migrating to MDM

When an organization wants to move to MDM to manage devices, they should prepare by analyzing their current Group Policy settings to see what they need to transition to MDM management. Microsoft created the [MDM Migration Analysis Tool](https://aka.ms/mmat/) (MMAT) to help. MMAT determines which Group Policies have been set for a target user or computer and then generates a report that lists the level of support for each policy settings in MDM equivalents. For more information, see [MMAT Instructions](https://github.com/WindowsDeviceManagement/MMAT/blob/master/MDM%20Migration%20Analysis%20Tool%20Instructions.pdf).


## Learn about device enrollment


-   [Mobile device enrollment](mobile-device-enrollment.md)
-   [Federated authentication device enrollment](federated-authentication-device-enrollment.md)
-   [Certificate authentication device enrollment](certificate-authentication-device-enrollment.md)
-   [On-premise authentication device enrollment](on-premise-authentication-device-enrollment.md)

## Learn about device management


-   [Azure Active Directory integration with MDM](azure-active-directory-integration-with-mdm.md)
-   [Enterprise app management](enterprise-app-management.md)
-   [Mobile device management (MDM) for device updates](device-update-management.md)
-   [Enable offline upgrades to Windows 10 for Windows Embedded 8.1 Handheld devices](enable-offline-updates-for-windows-embedded-8-1-handheld-devices-to-windows-10.md)
-   [OMA DM protocol support](oma-dm-protocol-support.md)
-   [Structure of OMA DM provisioning files](structure-of-oma-dm-provisioning-files.md)
-   [Server requirements for OMA DM](server-requirements-windows-mdm.md)
-   [Enterprise settings, policies, and app management](windows-mdm-enterprise-settings.md)

## Learn about configuration service providers


-   [Configuration service provider reference](configuration-service-provider-reference.md)
-   [WMI providers supported in Windows 10](wmi-providers-supported-in-windows.md)
-   [Using PowerShell scripting with the WMI Bridge Provider](using-powershell-scripting-with-the-wmi-bridge-provider.md)
-   [MDM Bridge WMI Provider](https://msdn.microsoft.com/library/windows/hardware/dn905224)

 

 






