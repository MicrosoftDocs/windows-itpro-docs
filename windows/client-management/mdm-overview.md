---
title: Mobile Device Management overview
description: Windows 10 and Windows 11 provide an enterprise-level solution to mobile management, to help IT pros comply with security policies while avoiding compromise of user's privacy.
ms.date: 08/04/2022
ms.technology: itpro-manage
ms.topic: article
ms.prod: windows-client
ms.localizationpriority: medium
author: vinaypamnani-msft
ms.author: vinpa
manager: aaroncz
ms.collection:
  - highpri
  - tier2
---

# Mobile Device Management overview

Windows 10 and Windows 11 provide an enterprise management solution to help IT pros manage company security policies and business applications, while avoiding compromise of the users' privacy on their personal devices. A built-in management component can communicate with the management server.

There are two parts to the Windows management component:

- The enrollment client, which enrolls and configures the device to communicate with the enterprise management server.
- The management client, which periodically synchronizes with the management server to check for updates and apply the latest policies set by IT.

Third-party MDM servers can manage Windows 10 by using the MDM protocol. The built-in management client is able to communicate with a third-party server proxy that supports the protocols outlined in this document to perform enterprise management tasks. The third-party server will have the same consistent first-party user experience for enrollment, which also provides simplicity for Windows 10 users. MDM servers don't need to create or download a client to manage Windows 10. For details about the MDM protocols, see [\[MS-MDM\]: Mobile Device Management Protocol](/openspecs/windows_protocols/ms-mdm/33769a92-ac31-47ef-ae7b-dc8501f7104f) and [\[MS-MDE2\]: Mobile Device Enrollment Protocol Version 2](/openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692).

## MDM security baseline

With Windows 10, version 1809, Microsoft is also releasing a Microsoft MDM security baseline that functions like the Microsoft GP-based security baseline. You can easily integrate this baseline into any MDM to support IT pros' operational needs, addressing security concerns for modern cloud-managed devices.

The MDM security baseline includes policies that cover the following areas:

- Microsoft inbox security technology (not deprecated) such as BitLocker, Windows Defender SmartScreen, and Device Guard (virtual-based security), Exploit Guard, Microsoft Defender Antivirus, and Firewall
- Restricting remote access to devices
- Setting credential requirements for passwords and PINs
- Restricting use of legacy technology
- Legacy technology policies that offer alternative solutions with modern technology
- And much more

For more information about the MDM policies defined in the MDM security baseline and what Microsoft's recommended baseline policy values are, see:

- [MDM Security baseline for Windows 11](https://download.microsoft.com/download/2/C/4/2C418EC7-31E0-4A74-8928-6DCD512F9A46/Windows11-MDM-SecurityBaseLine-Document.zip)
- [MDM Security baseline for Windows 10, version 2004](https://download.microsoft.com/download/2/C/4/2C418EC7-31E0-4A74-8928-6DCD512F9A46/2004-MDM-SecurityBaseLine-Document.zip)
- [MDM Security baseline for Windows 10, version 1909](https://download.microsoft.com/download/2/C/4/2C418EC7-31E0-4A74-8928-6DCD512F9A46/1909-MDM-SecurityBaseLine-Document.zip)
- [MDM Security baseline for Windows 10, version 1903](https://download.microsoft.com/download/2/C/4/2C418EC7-31E0-4A74-8928-6DCD512F9A46/1903-MDM-SecurityBaseLine-Document.zip)
- [MDM Security baseline for Windows 10, version 1809](https://download.microsoft.com/download/2/C/4/2C418EC7-31E0-4A74-8928-6DCD512F9A46/1809-MDM-SecurityBaseLine-Document-[Preview].zip)

For information about the MDM policies defined in the Intune security baseline, see [Windows security baseline settings for Intune](/mem/intune/protect/security-baseline-settings-mdm-all).

## Learn about device enrollment

- [Mobile device enrollment](mobile-device-enrollment.md)
- [Federated authentication device enrollment](federated-authentication-device-enrollment.md)
- [Certificate authentication device enrollment](certificate-authentication-device-enrollment.md)
- [On-premise authentication device enrollment](on-premise-authentication-device-enrollment.md)

## Learn about device management

- [Azure Active Directory integration with MDM](azure-active-directory-integration-with-mdm.md)
- [Enterprise app management](enterprise-app-management.md)
- [Mobile device management (MDM) for device updates](device-update-management.md)
- [OMA DM protocol support](oma-dm-protocol-support.md)
- [Structure of OMA DM provisioning files](structure-of-oma-dm-provisioning-files.md)
- [Server requirements for OMA DM](server-requirements-windows-mdm.md)
- [Enterprise settings, policies, and app management](windows-mdm-enterprise-settings.md)

## Learn about configuration service providers

- [WMI providers supported in Windows 10](wmi-providers-supported-in-windows.md)
- [Using PowerShell scripting with the WMI Bridge Provider](using-powershell-scripting-with-the-wmi-bridge-provider.md)
- [MDM Bridge WMI Provider](/windows/win32/dmwmibridgeprov/mdm-bridge-wmi-provider-portal)
- [Configuration service provider reference](mdm/index.yml)
