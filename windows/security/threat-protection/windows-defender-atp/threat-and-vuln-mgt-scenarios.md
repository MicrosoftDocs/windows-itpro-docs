---
title: Threat & Vulnerability Management scenarios
description: 
keywords: 
search.product: Windows 10
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dolmont
author: Dolcita Montemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Threat & Vulnerability Management scenarios
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[!include[Prerelease�information](prerelease.md)]

## Before you begin
Ensure that your machines:
- Are onboarded to Microsoft Defender Advanced Threat Protection
- Running with Windows 10 1709 (Fall Creators Update) or later
- Have at least one security recommendation that can be viewed in the machine page
- Are tagged or marked as co-managed

## Reduce your threat and vulnerability exposure
Threat & Vulnerability Management introduces a new exposure score metric which visually represents how exposed your machines are to imminent threats.

The exposure score is continuously calculated on each device in the organization and influenced by the following factors:
- Weaknesses, such as vulnerabilities and misconfigurations discovered on the device
- External and internal threats such as public exploit code and security alerts
- Likelihood of the device getting breached given its current security posture
- Value of the device to the organization given its role and content

The exposure score is broken down into the following levels:
- 0 to 29: low exposure score
- 30 to 69: medium exposure score
- 70 to 100: high exposure score

You can reduce the exposure score by remediating issues based on prioritized security recommendations. Each software has weaknesses that are transformed into recommendations and prioritized based on risk to the organization.

To lower down your threat and vulnerability exposure:

1. Review the **Top security recommendations** from your **Threat & Vulnerability Management dashboard**, and select the first item on the list. This opens the **Security recommendation** page.
>[!NOTE]
> There are two types of recommendations: 
> - <i>Security update</i> which refers to recommendations that require a package installation
> - <i>Configuration</i> change which refers to recommendations that require a registry or GPO modification
> <p>Always prioritize recommendations that are associated with ongoing threats. These recommendations are marked with the [insert bug image here] icon.</p>

2. In the **Security recommendations** page, you will see the description of what needs to be done and why. It shows the vulnerability details, such as the associated exploits affecting what machines and its business impact. Click **Open software page** option from the flyout menu.  

3. Click **Installed machines** and select the affected machine from the list to open the flyout page with the relevant machine details, exposure and risk levels, alert and incident activities. 

4. Click **Open machine page** to connect to the machine and apply the selected recommendation.

5. Allow a few hours for the changes to propagate in the system.
    
6. Review the machine **Security recommendation** tab again. The recommendation you've chosen to remediate won't be listed there anymore, and the exposure score should decrease.

## Improve your security configuration
>[!NOTE]
> Secure score is now part of Threat & Vulnerability Management as configuration score. We’ll keep the secure score page available for a few weeks. View the [secure score](https://securitycenter.windows.com/securescore) page .

## Request for remediation and monitor its progress
>[!NOTE]
> Microsoft Intune and Microsoft System Center Configuration Manager (SCCM) will be integrated with Threat & Vulnerability Management in the coming months. Upon inregration, this scenario requires that you are onboarded to Microsoft Intune or Microsoft System Center Configuration Manager (SCCM). If you are using SCCM, update your console to May version 1905.

The Threat & Vulnerability Management capability in Microsoft Defender ATP bridges the gap between Security and IT Administrators through the remediation request workflow. 
This capability allows you, the Security Administrator, to request for the IT Administrator to remediate a vulnerability or misconfiguration via Intune and SCCM with a click of a button.
Once requested, all the recommendation context (name, affected machines, justification, threat information) will generate a new security task in Microsoft Intune.

To use this capability:

1. Enable your Microsoft Intune connections. Navigate to **Settings** > **General** > **Advanced features**. Scroll down and look for **Microsoft Intune connection**. By default, the toggle is turned off. Turn your **Microsoft Intune** connection toggle on.

2. From the navigation menu, select the **Threat & Vulnerability Management** icon, then select **Security recommendations**. This opens up the **Security recommendations** page.  

3. In the **Security recommendation** page, select what you need to remediate and then click **Remediation options** from the flyout page.  

4. Select **Open a ticket in Intune**, a due date, and add optional notes for the IT Administrator. Then, click **Submit request**. 

5. Notify your IT Administrator about the new request and have them log into Intune to approve or reject the request and start a package deployment

6. View the status of the remediation request. Navigate to the **Remediation** page to view the activity progress.


## File for and manage exception
You can create exceptions for recommendations, as an alternative to requesting for remediation.

There are various reasons why organizations might want to create exceptions for a recommendation. For example, a business or production need that prevents the company from applying the recommendation, the existence of a compensating or alternative control that provides the same level of protection that the recommendation would, a false positive, among other reasons.

Exceptions can be created for both security update and configuration change recommendations.

When an exception is created for a recommendation, the recommendation is no longer active. The recommendation state changes to Exception, and it no longer shows up in the security recommendations list

>[!NOTE]
> You will still see the recommendations under exception by applying appropriate filters.   

1. Navigate to **Security recommendations** under the **Threat & Vulnerability Management**  menu.

2. Click the top-most recommendation. A side panel will open with the recommendation details.

3. Click the **Create exception** button at the top of the side panel.

4.	In the exception creation side panel, fill in the following details:
  - **Justification** – the reason for creating the exception, chosen from a drop-down list
  - **Justification context** – additional textual context related to the  justification
  - **Exception duration** – the period of time during which this exception will be in effect. When the exception expires, the recommendation automatically becomes active again.

5. Click **Submit**. A confirmation message at the top of the page will indicate that the exception has been created.

6. View all your exceptions (current + past) by navigating to **Remediation** under the **Threat & Vulnerability Management** menu and clicking on the **Exceptions** tab.

7. Click the exception that you created to view the details.

8. Navigate to **Security recommendations** under the **Threat & Vulnerability Management** menu again and see that recommendation will not appear there anymore as it is currently under exception.

## Related topics
- [Risk-based Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md)
- [Threat & Vulnerability Management dashboard overview](tvm-dashboard-insights.md)
- [Configuration score](configuration-score.md)
- [Configure Threat & Vulnerability Management](configure-and-manage-tvm.md)
