---
title: Mobile device management
description: Windows 10 provides an enterprise management solution to help IT pros manage company security policies and business applications, while avoiding compromise of the users’ privacy on their personal devices.
MS-HAID:
- 'p\_phDeviceMgmt.provisioning\_and\_device\_management'
- 'p\_phDeviceMgmt.mobile\_device\_management\_windows\_mdm'
ms.assetid: 50ac90a7-713e-4487-9cb9-b6d6fdaa4e5b
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 06/19/2017
---

# Mobile device management


Windows 10 provides an enterprise management solution to help IT pros manage company security policies and business applications, while avoiding compromise of the users’ privacy on their personal devices. A built-in management component can communicate with the management server.

There are two parts to the Windows 10 management component:

-   The enrollment client, which enrolls and configures the device to communicate with the enterprise management server.
-   The management client, which periodically synchronizes with the management server to check for updates and apply the latest policies set by IT.

Third-party MDM servers can manage Windows 10 by using the MDM protocol. The built-in management client is able to communicate with a third-party server proxy that supports the protocols outlined in this document to perform enterprise management tasks. The third-party server will have the same consistent first-party user experience for enrollment, which also provides simplicity for Windows 10 users. MDM servers do not need to create or download a client to manage Windows 10. For details about the MDM protocols, see [\[MS-MDM\]: Mobile Device Management Protocol](http://go.microsoft.com/fwlink/p/?LinkId=619346) and [\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2]( http://go.microsoft.com/fwlink/p/?LinkId=619347).

## Learn about device enrollment


-   [Mobile device enrollment](mobile-device-enrollment.md)
-   [Federated authentication device enrollment](federated-authentication-device-enrollment.md)
-   [Certificate authentication device enrollment](certificate-authentication-device-enrollment.md)
-   [On-premise authentication device enrollment](on-premise-authentication-device-enrollment.md)

## Learn about device management


-   [Azure Active Directory integration with MDM](azure-active-directory-integration-with-mdm.md)
-   [Enterprise app management](enterprise-app-management.md)
-   [Device update management](device-update-management.md)
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

 

 






