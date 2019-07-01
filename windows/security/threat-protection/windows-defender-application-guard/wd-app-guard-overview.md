---
title: Windows Defender Application Guard (Windows 10)
description: Learn about Windows Defender Application Guard and how it helps to combat malicious content and malware out on the Internet.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
ms.author: dansimp
ms.date: 03/28/2019
ms.reviewer: 
manager: dansimp
---

# Windows Defender Application Guard overview

**Applies to:** [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Windows Defender Application Guard (Application Guard) is designed to help prevent old and newly emerging attacks to help keep employees productive. Using our unique hardware isolation approach, our goal is to destroy the playbook that attackers use by making current attack methods obsolete. 

## What is Application Guard and how does it work?
Designed for Windows 10 and Microsoft Edge, Application Guard helps to isolate enterprise-defined untrusted sites, protecting your company while your employees browse the Internet. As an enterprise administrator, you define what is among trusted web sites, cloud resources, and internal networks. Everything not on your list is considered untrusted.

If an employee goes to an untrusted site through either Microsoft Edge or Internet Explorer, Microsoft Edge opens the site in an isolated Hyper-V-enabled container, which is separate from the host operating system. This container isolation means that if the untrusted site turns out to be malicious, the host PC is protected, and the attacker can't get to your enterprise data. For example, this approach makes the isolated container anonymous, so an attacker can't get to your employee's enterprise credentials.

![Hardware isolation diagram](images/appguard-hardware-isolation.png)

### What types of devices should use Application Guard?
Application Guard has been created to target several types of systems:

- **Enterprise desktops.** These desktops are domain-joined and managed by your organization. Configuration management is primarily done through System Center Configuration Manager or Microsoft Intune. Employees typically have Standard User privileges and use a high-bandwidth, wired, corporate network.

- **Enterprise mobile laptops.** These laptops are domain-joined and managed by your organization. Configuration management is primarily done through System Center Configuration Manager or Microsoft Intune. Employees typically have Standard User privileges and use a high-bandwidth, wireless, corporate network.

- **Bring your own device (BYOD) mobile laptops.** These personally-owned laptops are not domain-joined, but are managed by your organization through tools like Microsoft Intune. The employee is typically an admin on the device and uses a high-bandwidth wireless corporate network while at work and a comparable personal network while at home.

- **Personal devices.** These personally-owned desktops or mobile laptops are not domain-joined or managed by an organization. The user is an admin on the device and uses a high-bandwidth wireless personal network while at home or a comparable public network while outside.

## Frequently Asked Questions

|        |                                                                                                                                                                                                      |
|--------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Q:** |                                                                  Can I enable Application Guard on machines equipped with 4GB RAM?                                                                   |
| **A:** | We recommend 8GB RAM for optimal performance but you may use the following registry DWORD values to enable Application Guard on machines that aren't meeting the recommended hardware configuration. |
|        |                                                         HKLM\software\Microsoft\Hvsi\SpecRequiredProcessorCount       - Default is 4 cores.                                                          |
|        |                                                           HKLM\software\Microsoft\Hvsi\SpecRequiredMemoryInGB            - Default is 8GB.                                                           |
|        |                                                             HKLM\software\Microsoft\Hvsi\SpecRequiredFreeDiskSpaceInGB - Default is 5GB.                                                             |

<br>


|        |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
|--------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Q:** |                                                                                                                                                                                              Can employees download documents from the Application Guard Edge session onto host devices?                                                                                                                                                                                               |
| **A:** | In Windows 10 Enterprise edition 1803, users will be able to download documents from the isolated Application Guard container to the host PC. This is managed by policy.<br><br>In Windows 10 Enterprise edition 1709 or Windows 10 Professional edition 1803, it is not possible to download files from the isolated Application Guard container to the host PC. However, employees can use the **Print as PDF** or **Print as XPS** options and save those files to the host device. |

<br>


|        |                                                                                                                                    |
|--------|------------------------------------------------------------------------------------------------------------------------------------|
| **Q:** |                    Can employees copy and paste between the host device and the Application Guard Edge session?                    |
| **A:** | Depending on your organization's settings, employees can copy and paste images (.bmp) and text to and from the isolated container. |

<br>


|        |                                                                                                                                                                                             |
|--------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Q:** |                                                       Why don't employees see their Favorites in the Application Guard Edge session?                                                        |
| **A:** | To help keep the Application Guard Edge session secure and isolated from the host device, we don't copy the Favorites stored in the Application Guard Edge session back to the host device. |

<br>


|        |                                                                                                                                       |
|--------|---------------------------------------------------------------------------------------------------------------------------------------|
| **Q:** |                       Why aren’t employees able to see their Extensions in the Application Guard Edge session?                        |
| **A:** | Currently, the Application Guard Edge session doesn't support Extensions. However, we're closely monitoring your feedback about this. |

<br>


|        |                                                                                                                                                                                                                                                                                                                      |
|--------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Q:** |                                                                                                                    How do I configure WDAG to work with my network proxy (IP-Literal Addresses)?                                                                                                                     |
| **A:** | WDAG requires proxies to have a symbolic name, not just an IP address. IP-Literal proxy settings such as “192.168.1.4:81” can be annotated as “itproxy:81” or using a record such as “P19216810010” for a proxy with an IP address of 192.168.100.10. This applies to Windows 10 Enterprise edition, 1709 or higher. |

<br>


|        |                                                                                                                                                                                                                                                                                                  |
|--------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Q:** |                                                                       I enabled the hardware acceleration policy on my Windows 10 Enterprise, version 1803 deployment. Why are my users still only getting CPU rendering?                                                                        |
| **A:** | This feature is currently experimental-only and is not functional without an additional regkey provided by Microsoft. If you would like to evaluate this feature on a deployment of Windows 10 Enterprise, version 1803, please contact Microsoft and we’ll work with you to enable the feature. |

<br>


|        |                                                                                                                                                                                                                                                                              |
|--------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Q:** |                                                                                                                What is the WDAGUtilityAccount local account?                                                                                                                 |
| **A:** | This account is part of Application Guard beginning with Windows 10 version 1709 (Fall Creators Update). This account remains disabled until Application Guard is enabled on your device. This item is integrated to the OS and is not considered as a threat/virus/malware. |

<br>

## Related topics

|Topic |Description |
|------|------------|
|[System requirements for Windows Defender Application Guard](reqs-wd-app-guard.md) |Specifies the pre-requisites necessary to install and use Application Guard.|
|[Prepare and install Windows Defender Application Guard](install-wd-app-guard.md) |Provides instructions about determining which mode to use, either Standalone or Enterprise-managed, and how to install Application Guard in your organization.|
|[Configure the Group Policy settings for Windows Defender Application Guard](configure-wd-app-guard.md) |Provides info about the available Group Policy and MDM settings.|
|[Testing scenarios using Windows Defender Application Guard in your business or organization](test-scenarios-wd-app-guard.md)|Provides a list of suggested testing scenarios that you can use to test Windows Defender Application Guard (Application Guard) in your organization.|

