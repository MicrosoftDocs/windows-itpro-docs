---
title: Mobile Device Management overview
description: Windows provides an enterprise-level solution to mobile management, to help IT pros comply with security policies while avoiding compromise of user's privacy.
ms.date: 07/08/2024
ms.topic: conceptual
ms.localizationpriority: medium
ms.collection:
- highpri
- tier2
---

# Mobile Device Management overview

Windows provides an enterprise management solution to help IT pros manage company security policies and business applications, while avoiding compromise of the users' privacy on their personal devices. A built-in management component can communicate with the management server.

There are two parts to the Windows management component:

- The enrollment client, which enrolls and configures the device to communicate with the enterprise management server. For more information, see [Enrollment overview](mobile-device-enrollment.md).
- The management client, which periodically synchronizes with the management server to check for updates and apply the latest policies set by IT.

Third-party MDM servers can manage Windows devices using the MDM protocol. The built-in management client is able to communicate with a third-party server proxy that supports the protocols outlined in this document to perform enterprise management tasks. The third-party server has the same consistent first-party user experience for enrollment, which also provides simplicity for Windows users. MDM servers don't need to create or download a client to manage Windows.

For details about the MDM protocols, see

- [[MS-MDE2]: Mobile Device Enrollment Protocol Version 2](/openspecs/windows_protocols/ms-mde2/4d7eadd5-3951-4f1c-8159-c39e07cbe692)
- [[MS-MDM]: Mobile Device Management Protocol](/openspecs/windows_protocols/ms-mdm/33769a92-ac31-47ef-ae7b-dc8501f7104f)

## MDM security baseline

Microsoft provides MDM security baselines that function like the Microsoft group policy security baseline. You can easily integrate this baseline into any MDM solution to support IT pros' operational needs, addressing security concerns for modern cloud-managed devices.

The MDM security baseline includes policies that cover the following areas:

- Microsoft inbox security technologies (not deprecated) such as **BitLocker, Windows Defender SmartScreen, Exploit Guard, Microsoft Defender Antivirus,** and **Firewall**
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

[!INCLUDE [modern-device-management-through-mdm](../../includes/licensing/modern-device-management-through-mdm.md)]

## Frequently Asked Questions

### Can there be more than one MDM server to enroll and manage devices in Windows?

No. Only one MDM is allowed.

### How do I set the maximum number of Microsoft Entra joined devices per user?

1. Sign in to the portal as tenant admin: <https://portal.azure.com>.
1. Navigate to **Microsoft Entra ID**, then **Devices**, and then select **Device Settings**.
1. Change the number under **Maximum number of devices per user**.

### What is dmwappushsvc?

| Entry | Description |
| --------------- | -------------------- |
| What is dmwappushsvc? | It's a Windows service that ships in the Windows operating system as a part of the Windows management platform. It's used internally by the operating system as a queue for categorizing and processing all Wireless Application Protocol (WAP) messages, which include Windows management messages, and Service Indication/Service Loading (SI/SL). The service also initiates and orchestrates management sync sessions with the MDM server. |
| What data is handled by dmwappushsvc? | It's a component handling the internal workings of the management platform and is involved in processing messages that have been received by the device remotely for management. The messages in the queue are serviced by another component that is also part of the Windows management stack to process messages. The service also routes and authenticates WAP messages received by the device to internal OS components that process them further. This service doesn't send telemetry. |
| How do I turn if off? | The service can be stopped from the "Services" console on the device (Start > Run > services.msc) and locating *Device Management Wireless Application Protocol (WAP) Push message Routing Service*. However, since this service is a component part of the OS and  is required for the proper functioning of the device, we strongly recommend not to disable the service. Disabling this service causes your management to fail. |
