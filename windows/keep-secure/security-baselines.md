---
title: Use security baselines in your organization (Windows 10)
description: Use this topic to learn what security baselines are and how you can use them in your organization to help keep your devices secure.
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Use security baselines in your organization

**Applies to**
-   Windows 10
-   Windows Server 2016 Technical Preview
-   Windows Server 2012 R2

Microsoft is dedicated to provide our customers with a secure operating system, such as Windows 10 and Windows Server, as well as secure apps, such as Microsoft Office. In addition to the security assurance of its products, Microsoft also enables you to have fine control of your environments by providing various configuration capabilities. Even though Windows and Windows Server is designed to be secure out-of-the-box, a large number of organizations still want a higher level of security. Therefore, organizations need guidance on how to best use the security features.

Microsoft security baselines give organizations the security guidance they need to protect their devices and apps.  
 
<!-- ## How do you manage apps and devices?

Before you can apply a security baseline, you should determine how apps and devices are managed within your organization. Knowing this helps you identify the role security baselines play in your organization. 

Windows 10 is more manageable than previous versions of Windows in the following ways:

- Provides more management granularity, which allows you to have finer control over the Windows user experience and security.
- Allows you to use a wide variety of management solutions, such as Mobile Device Management (MDM) services, provisioning packages, Exchange ActiveSync, System Center Configuration Manager, Windows Management Instrumentation (WMI), and Group Policy. 

![Windows management architecture](images/windows-management-architecture.png)

*Figure 1 Windows 10 management architecture*

Historically, Microsoft customers have used Group Policy, System Center Configuration Manager, and WMI to manage their devices. Some government customers relied on the Security Content Automation Protocol (SCAP) for management. However, newer management solutions can address modern requirements.
-->

## What are security baselines?

Every organization faces security threats. However, the types of security threats that are of most concern to one organization can be completely different from another organization. For example, an e-commerce company may focus on protecting their Internet-facing web apps, while a hospital may focus on protecting confidential patient information. The one thing that all organizations have in common is a need to keep their apps and devices secure. These devices must be compliant with the security standards (or security baselines) defined by the organization.

A security baseline is a collection of settings that have a security impact and include Microsoft’s recommended value for configuring those settings along with guidance on the security impact of those settings. These settings are based on feedback from Microsoft product groups, partners, and 
customers.  

## Why are security baselines needed?

The expert knowledge that Microsoft, partners, and other customers bring together in a security baseline is an essential benefit to customers.

For example, there are over 3,000 Group Policy settings for Windows 10, which does not include over 1,800 Internet Explorer 11 settings. Of those 3,800 settings, only some of them are security-related. While Microsoft provides extensive guidance on different security features, going through each of them can take a long time. You would have to determine the security impact of each setting on your own. After you've done that, you still need to determine what values each of these settings should be. 

In modern organizations, the security threat landscape is constantly evolving and you must keep current with security threats and changes to Windows security settings to help mitigate these threats. 

To help faster deployments and increase the ease of managing Windows, Microsoft provides customers with security baselines that are available in formats that can be consumed, such as Group Policy Objects backups and DCM packs.
 
 ## How can you use security baselines?
 
 You can use security baselines to:
 
 - Ensure that user and device configuration settings are compliant with the baseline. 
 - Set configuration settings. For example, you can use Group Policy, System Center Configuration Manager, or Microsoft Intune to configure a device with the setting values specified in the baseline.
 
 
 ## Where can I get the security baselines?
 
 Here's a list of security baselines that are currently available:
 
 -  [Windows 10 security baselines](windows-10-security-baselines.md)
 -  [Windows Server security baselines](windows-server=security-baselines.md)

