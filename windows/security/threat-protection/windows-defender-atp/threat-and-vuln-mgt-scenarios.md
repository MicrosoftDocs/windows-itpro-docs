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
- Are onboarded to Microsoft Intune or Microsoft System Center Configuration Manager (SCCM). If you are using SCCM, update your console to April version 1904
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

To lower down your threat and vulnerability exposure through remediation via Microsoft Intune:

1. Review the **Top security recommendations** list from your Threat & Vulnerability Management dashboard, and select the first item on the list. This opens the **Security recommendation** page.

2. In the **Security recommendations** page, you will see the description of what needs to be done and why. It will also show you the vulnerability details, such as the associated exploits affecting what machines and its business impact. Select **Request remediation**.. 
Note: There are two types of recommendations: 
- Security update which refers to recommendations that require a package installation
- Configuration change which refers to recommendations that require a registry or GPO modification
- Always prioritize recommendations that are associated with ongoing threats. These recommendations are marked with the [insert bug image here] icon.
3. Select **Open a ticket in Intune** and indicate the remediation due date.
    
4.	Add a note for the IT administrator who will pick up the remediation task for more context. 

5.	Click **Submit request**. This will take you to the Intune portal.

6.	<Add Intune portal workflow here>

7. 5.	Review the machine **Security recommendation** tab again. The recommendation should now disappear, and the exposure score should decrease.


## Improve your security configuration

## Request for remediation and monitor its progress

The Threat & Vulnerability Management capability in Microsoft Defender ATP bridges the gap between Security and IT Administrators through the remediation request workflow. 
This capability allows you, the Security Administrator, to request for the IT Administrator to remediate a vulnerability or misconfiguration via Intune and SCCM with a click of a button.
Once requested, all the recommendation context (name, affected machines, justification, threat information) will generate a new security task in Microsoft Intune.

To use this capability:

1. Enable your Microsoft Intune connections. Navigate to **Settings** > **General** > **Advanced features**. Scroll down and look for **Microsoft Intune connection**. By default, the toggle is turned off. Turn your **Microsoft Intune** connection toggle on.

2. Click on a security recommendation you would like to request remediation for, and then click **Request remediation**.

3. Select **Open a ticket in Intune**, select a due date, and optional notes for the IT Administrator. Then, click **Submit request**.
Note: You also have the option to export all the data from the recommendation in the CSV format by selecting **Export all remediation activity data to CSV**.

4.	Notify your IT Administrator about the new request and have them log into Intune to approve or reject the request and start a package deployment

5.	View the status of the remediation request. Navigate to the **Remediation** page to view the activity progress.


## File for and manage exception
You can create exceptions for recommendations, as an alternative to requesting for remediation.

There are various reasons why organizations might want to create exceptions for a recommendation. For example, a business or production need that prevents the company from applying the recommendation, the existence of a compensating or alternative control that provides the same level of protection that the recommendation would, a false positive, among other reasons.

Exceptions can be created for both security update and configuration change recommendations.

When an exception is created for a recommendation, the recommendation is no longer active. The recommendation state changes to Exception, and it no longer shows up in the security recommendations list

Note: You will still see the recommendations under exception by applying appropriate filters.   
1. Navigate to **Security recommendations** under the **Threat & Vulnerability Management**  menu.

2. Click the top-most recommendation. A side panel will open with the recommendation details.

3. Click the **Create exception** button at the top of the side panel.

4.	In the exception creation side panel, fill in the following details:
- **Justification** – the reason for creating the exception, chosen from a drop-down list
- **Justification context** – additional textual context related to the  justification
- **Exception duration** – the period of time during which this exception will be in effect. When the exception expires, the recommendation automatically becomes active again.

5. Click **Submit**. A confirmation message at the top of the page will indicate that the exception has been created.

6. View all your exceptions (current + past) by navigating to **Remediation** under the **Threat & Vulnerability Management** menu and clicking on the **Exceptions** tab.

7.	Click the exception that you created to view the details.

8.	Navigate to **Security recommendations** under the **Threat & Vulnerability Management** menu again and see that recommendation will not appear there anymore as it is currently under exception.

## Related topics
- [Next-generation Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md)
- [Threat & Vulnerability Management dashboard overview](tvm-dashboard-insights.md)
- [Configuration score](configuration-score.md)
- [Configure Threat & Vulnerability Management](configure-and-manage-tvm.md)
