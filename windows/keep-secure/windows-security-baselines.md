---
title: Windows security baselines (Windows 10)
description: Use this topic to learn what security baselines are and how you can use them in your organization to help keep your devices secure.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: brianlic-msft
---

# Windows security baselines

Microsoft is dedicated to provide our customers with a secure operating system, such as Windows 10 and Windows Server, as well as secure apps, such as Microsoft Edge. In addition to the security assurance of its products, Microsoft also enables you to have fine control of your environments by providing various configuration capabilities. Even though Windows and Windows Server are designed to be secure out-of-the-box, a large number of organizations still want more granular control of their security configurations. To navigate these large number of controls, organizations need guidance for configuring various security features. Microsoft provides this guidance in the form of security baselines.

We recommend implementing an industry-standard configuration that is broadly known and well-tested, such as a Microsoft security baseline, as opposed to creating one yourself. This helps increase flexibility and reduce costs.  

## What are security baselines?

Every organization faces security threats. However, the types of security threats that are of most concern to one organization can be completely different from another organization. For example, an e-commerce company may focus on protecting their Internet-facing web apps, while a hospital may focus on protecting confidential patient information. The one thing that all organizations have in common is a need to keep their apps and devices secure. These devices must be compliant with the security standards (or security baselines) defined by the organization.

A security baseline is a collection of settings that have a security impact and include Microsoft’s recommended value for configuring those settings along with guidance on the security impact of those settings. These settings are based on feedback from Microsoft security engineering teams, product groups, partners, and 
customers.  

## Why are security baselines needed?

Security baselines are an essential benefit to customers because they bring together expert knowlege from Microsoft, partners, and customers.

For example, there are over 3,000 Group Policy settings for Windows 10, which does not include over 1,800 Internet Explorer 11 settings. Of those 4,800 settings, only some of them are security-related. While Microsoft provides extensive guidance on different security features, going through each of them can take a long time. You would have to determine the security impact of each setting on your own. After you've done that, you still need to determine what values each of these settings should be. 

In modern organizations, the security threat landscape is constantly evolving. IT pros and policy makers must keep current with security threats and changes to Windows security settings to help mitigate these threats. 

To help faster deployments and increase the ease of managing Windows, Microsoft provides customers with security baselines that are available in formats that can be consumed, such as Group Policy Objects backups.
 
## How can you use security baselines?
 
 You can use security baselines to:
 
 - Ensure that user and device configuration settings are compliant with the baseline. 
 - Set configuration settings. For example, you can use Group Policy, System Center Configuration Manager, or Microsoft Intune to configure a device with the setting values specified in the baseline. 

 > [!NOTE]  
 > Microsoft Security Compliance Manager 4.0 is available from the [Microsoft Download Center](https://www.microsoft.com/en-us/download/details.aspx?id=53353).
 
## Where can I get the security baselines?
 
 Here's a list of security baselines that are currently available.

 > [!NOTE]  
 > If you want to know what has changed with each security baseline, or if you want to stay up-to-date on what’s happening with them, check out the [Microsoft Security Guidance](http://blogs.technet.microsoft.com/secguide) blog.

### Windows 10 security baselines
 
 -  [Windows 10, Version 1511 security baseline](http://go.microsoft.com/fwlink/p/?LinkID=799381)
 -  [Windows 10, Version 1507 security baseline](http://go.microsoft.com/fwlink/p/?LinkID=799380)


### Windows Server security baselines

 -  [Windows Server 2012 R2 security baseline](http://go.microsoft.com/fwlink/p/?LinkID=799382)

## How can I monitor security baseline deployments?

Microsoft’s Operation Management Services (OMS) helps you monitor security baseline deployments across your servers. To find out more, check out [Operations Management Suite](https://aka.ms/omssecscm).

You can use [System Center Configuration Manager](https://www.microsoft.com/cloud-platform/system-center-configuration-manager) to monitor security baseline deployments on client devices within your organization.
 