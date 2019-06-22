---
title: Threat & Vulnerability Management scenarios
description: Learn how to use Threat & Vulnerability Management in the context of scenarios that Security Administrators encounter when collaborating with IT Administrators and SecOps while protecting their organization from cybersecurity threats.    
keywords: mdatp-tvm scenarios, mdatp, tvm, tvm scenarios, reduce threat & vulnerability exposure, reduce threat and vulnerability, improve security configuration, increase configuration score, increase threat & vulnerability configuration score, configuration score, exposure score, security controls 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dolmont
author: DulceMontemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Threat & Vulnerability Management scenarios
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[!include[Prerelease information](prerelease.md)]

## Before you begin
Ensure that your machines:
- Are onboarded to Microsoft Defender Advanced Threat Protection
- Running with Windows 10 1709 (Fall Creators Update) or later

>[!NOTE]
>Threat & Vulnerability Management can also scan machines running on Windows 7 and Windows Server 2019 operating systems and detects vulnerabilities coming from patch Tuesday.

- Have the following mandatory updates installed:
- (1) RS3 customers | [KB4493441](https://support.microsoft.com/en-us/help/4493441/windows-10-update-kb4493441)
- (2) RS4 customers | [KB4493464](https://support.microsoft.com/en-us/help/4493464)
- Are onboarded to Microsoft Intune and System Center Configuration Manager (SCCM). If you are using SCCM, update your console to the latest May version 1905
- Have at least one security recommendation that can be viewed in the machine page
- Are tagged or marked as co-managed


## Reduce your threat and vulnerability exposure
Threat & Vulnerability Management introduces a new exposure score metric which visually represents how exposed your machines are to imminent threats.

The exposure score is continuously calculated on each device in the organization and influenced by the following factors:
- Weaknesses, such as vulnerabilities discovered on the device
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
  
   >>![top security recommendations](images/tvm_security_recommendations.png)

   >[!NOTE]
   > There are two types of recommendations: 
   > - <i>Security update</i> which refers to recommendations that require a package installation
   > - <i>Configuration</i> change which refers to recommendations that require a registry or GPO modification
   > Always prioritize recommendations that are associated with ongoing threats. These recommendations are marked with the threat insight ![threat insight](images/tvm_bug_icon.png) icon and possible active alert ![possible active alert](images/tvm_alert_icon.png) icon.  
   
2. In the **Security recommendations** page, you will see the description of what needs to be done and why. It shows the vulnerability details, such as the associated exploits affecting what machines and its business impact. Click **Open software page** option from the flyout menu.  ![details in security recommendations page](images/tvm_security_recommendations_page.png)

3. Click **Installed machines** and select the affected machine from the list to open the flyout page with the relevant machine details, exposure and risk levels, alert and incident activities. ![details in software page ](images/tvm_software_page_details.png)

4. Click **Open machine page** to connect to the machine and apply the selected recommendation.  ![details in machine page](images/tvm_machine_page_details.png)

5. Allow a few hours for the changes to propagate in the system.
    
6. Review the machine **Security recommendation** tab again. The recommendation you've chosen to remediate won't be listed there anymore, and the exposure score should decrease.

## Improve your security configuration
>[!NOTE]
> Secure score is now part of Threat & Vulnerability Management as [configuration score](configuration-score.md). We’ll keep the secure score page available for a few weeks. View the [secure score](https://securitycenter.windows.com/securescore) page. 

Remediating issues in the security recommendations list will improve your configuration. As you do so, your configuration score improves, which means building your organization's resilience against cybersecurity threats and vulnerabilities stronger.

1. From the Configuration score widget, select **Security controls**. This opens the **Security recommendations** page showing the list of issues related to security controls.

   >>![configuration score widget](images/tvm_config_score.png)

2. Select the first item on the list. This opens the flyout menu with the description of the security controls issue, a short description of the potential risk, insights, configuration ID, exposed machines, and business impact. Click **Remediation options**. 
   ![security controls related security recommendations](images/tvm_security_controls.png)

3. Read the description to understand the context of the issue and what to do next. Select a due date, add notes, and select **Export all remediation activity data to CSV** so you can attach it to the email that you can send to your IT Administrator for follow-up.

   >>![request remediation](images/tvm_request_remediation.png). 

   >You will see a confirmation message that the remediation task has been created.
   >![remediation task creation confirmation](images/tvm_remediation_task_created.png)

4. Save your CSV file.
   ![save csv file](images/tvm_save_csv_file.png)

5. Send a follow up email to your IT Administrator and allow the time that you have alloted for the remediation to propagate in the system.

6. Review the machine **Configuration score** widget again. The number of the security controls issues will decrease. When you click **Security controls** to go back to the **Security recommendations** page, the item that you have addressed will not be be listed there anymore, and your configuration score should increase.

## Request a remediation 
>[!NOTE]
>To use this capability, enable your Microsoft Intune connections. Navigate to **Settings** > **General** > **Advanced features**. Scroll down and look for **Microsoft Intune connection**. By default, the toggle is turned off. Turn your **Microsoft Intune connection** toggle on.

The Threat & Vulnerability Management capability in Microsoft Defender ATP bridges the gap between Security and IT Administrators through the remediation request workflow. 
Security Administrators like you can request for the IT Administrator to remediate a vulnerability from the **Security recommendation** pages to Intune.

1. Click on a security recommendation you would like to request remediation for, and then click **Remediation options**.

2. Select **Open a ticket in Intune (for AAD joined devices)**, select a due date, and add optional notes for the IT Administrator. Click **Submit request**.

3. Notify your IT Administrator about the new request and have them log into Intune to approve or reject the request and start a package deployment.

4. Go to the **Remediation** page to view the status of your remediation request.

See [Use Intune to remediate vulnerabilities identified by Microsoft Defender ATP](https://docs.microsoft.com/en-us/intune/atp-manage-vulnerabilities) for details.

>[!NOTE]
>If your request involves remediating more than 10,000 machines, we will only send 10,000 machines for remediation to Intune at a time. Create another remediation request for the remaining machines up to 10,000.

## File for exception
With Threat & Vulnerability Management, you can create exceptions for recommendations, as an alternative to requesting for remediation.

There are many reasons why organizations might want to create exceptions for a recommendation. For example, if there's a business justification that prevents the company from applying the recommendation, the existence of a compensating or alternative control that provides the same level of protection that the recommendation would, a false positive, among other reasons.

Exceptions can be created for both *Security update* and *Configuration change* recommendations.

When an exception is created for a recommendation, the recommendation is no longer active. The recommendation state changes to **Exception**, and it no longer shows up in the security recommendations list.


1. Navigate to the **Security recommendations** page under the **Threat & Vulnerability Management** section menu.

2. Click the top-most recommendation. A fly-in panel will open with the recommendation details.

3. Click **Exception options**.

4. Select your justification for filing an exception instead of remediating the security recommendation in question. Fill out the justification context, then set the exception duration.

5. Click Submit. A confirmation message at the top of the page will indicate that the exception has been created

6. View all your exceptions (current + past) by navigating to the **Remediation** page under the **Threat & Vulnerability Management** menu and clicking on the **Exceptions** tab.


## Related topics
- [Risk-based Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md)
- [Threat & Vulnerability Management dashboard overview](tvm-dashboard-insights.md)
- [Configuration score](configuration-score.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Remediation](tvm-remediation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)

