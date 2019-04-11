---
title: Windows security baselines
description: This article, and the articles it links to, describe how to use Windows security baselines in your organization
keywords: virtualization, security, malware
ms.prod: w10
ms.mktglfcycl: deploy
ms.localizationpriority: medium
ms.author: sagaudre
author: justinha
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 06/25/2018
---

# Windows security baselines

**Applies to**  

-   Windows 10
-   Windows Server 2016 
-   Office 2016 

## Using security baselines in your organization 

Microsoft is dedicated to providing its customers with secure operating systems, such as Windows 10 and Windows Server, and secure apps, such as Microsoft Edge. In addition to the security assurance of its products, Microsoft also enables you to have fine control over your environments by providing various configuration capabilities. 

Even though Windows and Windows Server are designed to be secure out-of-the-box, many organizations still want more granular control over their security configurations. To navigate the large number of controls, organizations need guidance on configuring various security features. Microsoft provides this guidance in the form of security baselines.

We recommend that you implement an industry-standard configuration that is broadly known and well-tested, such as Microsoft security baselines, as opposed to creating a baseline yourself. This helps increase flexibility and reduce costs. 

Here is a good blog about [Sticking with Well-Known and Proven Solutions](https://blogs.technet.microsoft.com/fdcc/2010/10/06/sticking-with-well-known-and-proven-solutions/).

## What are security baselines? 

Every organization faces security threats. However, the types of security threats that are of most concern to one organization can be completely different from another organization. For example, an e-commerce company may focus on protecting its Internet-facing web apps, while a hospital may focus on protecting confidential patient information. The one thing that all organizations have in common is a need to keep their apps and devices secure. These devices must be compliant with the security standards (or security baselines) defined by the organization. 

A security baseline is a group of Microsoft-recommended configuration settings that explains their security impact. These settings are based on feedback from Microsoft security engineering teams, product groups, partners, and customers. 

## Why are security baselines needed? 

Security baselines are an essential benefit to customers because they bring together expert knowledge from Microsoft, partners, and customers. 

For example, there are over 3,000 Group Policy settings for Windows 10, which does not include over 1,800 Internet Explorer 11 settings. Of these 4,800 settings, only some are security-related. Although Microsoft provides extensive guidance on different security features, exploring each one can take a long time. You would have to determine the security impact of each setting on your own. Then, you would still need to determine  the appropriate value for each setting. 

In modern organizations, the security threat landscape is constantly evolving, and IT pros and policy-makers must keep up with security threats and make required changes to Windows security settings to help mitigate these threats. To enable faster deployments and make managing Windows easier, Microsoft provides customers with security baselines that are available in consumable formats, such as Group Policy Objects backups.

## How can you use security baselines? 

You can use security baselines to: 
-   Ensure that user and device configuration settings are compliant with the baseline. 
-   Set configuration settings. For example, you can use Group Policy, System Center Configuration Manager, or Microsoft Intune to configure a device with the setting values specified in the baseline. 

## Where can I get the security baselines? 

You can download the security baselines from the [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=55319). This download page is for the Security Compliance Toolkit (SCT), which comprises tools that can assist admins in managing  baselines in addition to the security baselines.

The security baselines are included in the [Security Compliance Toolkit (SCT)](security-compliance-toolkit-10.md), which can be downloaded from the Microsoft Download Center. The SCT also includes tools to help admins manage the security baselines. 

[![Security Compliance Toolkit](./../images/security-compliance-toolkit-1.png)](security-compliance-toolkit-10.md) 
[![Get Support](./../images/get-support.png)](get-support-for-security-baselines.md) 

## Community

[![Microsoft Security Guidance Blog](./../images/community.png)](https://blogs.technet.microsoft.com/secguide/) 

## Related Videos

You may also be interested in this msdn channel 9 video: 
-   [Defrag Tools](https://channel9.msdn.com/Shows/Defrag-Tools/Defrag-Tools-174-Security-Baseline-Policy-Analyzer-and-LGPO)

## See Also

-   [System Center Configuration Manager (SCCM)](https://www.microsoft.com/cloud-platform/system-center-configuration-manager)
-   [Azure Monitor](https://docs.microsoft.com/azure/azure-monitor/)
-   [Microsoft Security Guidance Blog](https://blogs.technet.microsoft.com/secguide/)
-   [Microsoft Security Compliance Toolkit Download](https://www.microsoft.com/download/details.aspx?id=55319)
-   [Microsoft Download Center](https://www.microsoft.com/download/details.aspx?id=55319) 
