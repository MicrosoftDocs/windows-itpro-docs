---
title: Overview of Microsoft Secure Score for Devices in Microsoft Defender Security Center
description: Your score for devices shows the collective security configuration state of your devices across application, operating system, network, accounts, and security controls
keywords: Microsoft Secure Score for Devices, mdatp Microsoft Secure Score for Devices, secure score, configuration score, security controls, improvement opportunities, security configuration score over time, security posture, baseline
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: ellevin
author: levinec
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---
# Microsoft Secure Score for Devices

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>[!NOTE]
> Configuration score is now part of Threat & Vulnerability Management as Microsoft Secure Score for Devices.

Your score for devices is visible in the [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md) of the Microsoft Defender Security Center. A higher Microsoft Secure Score for Devices means your endpoints are more resilient from cybersecurity threat attacks. It reflects the collective security configuration state of your devices across the following categories:

- Application
- Operating system
- Network
- Accounts
- Security controls

Select a category to go to the [**Security recommendations**](tvm-security-recommendation.md) page and view the relevant recommendations.

## How it works

>[!NOTE]
> Microsoft Secure Score for Devices currently supports configurations set via Group Policy. Due to the current partial Intune support, configurations which might have been set through Intune might show up as misconfigured. Contact your IT Administrator to verify the actual configuration status in case your organization is using Intune for secure configuration management.

The data in the Microsoft Secure Score for Devices card is the product of meticulous and ongoing vulnerability discovery process aggregated with configuration discovery assessments that continuously:

- Compare collected configurations to the collected benchmarks to discover misconfigured assets
- Map configurations to vulnerabilities that can be remediated or partially remediated (risk reduction)
- Collect and maintain best practice configuration benchmarks (vendors, security feeds, internal research teams)
- Collect and monitor changes of security control configuration state from all assets

## Improve your security configuration

You can improve your security configuration when you remediate issues from the security recommendations list. As you do so, your Microsoft Secure Score for Devices improves, which means your organization becomes more resilient against cybersecurity threats and vulnerabilities.

1. From the Microsoft Secure Score for Devices card in the Threat & Vulnerability Management dashboard, select the one of the categories to view the list of recommendations related to that category. It will take you to the [**Security recommendations**](tvm-security-recommendation.md) page. If you want to see all security recommendations, once you get to the Security recommendations page, clear the search field.

2. Select an item on the list. The flyout panel will open with details related to the recommendation. Select **Remediation options**.

   ![Security controls related security recommendations](images/tvm_security_controls.png)

3. Read the description to understand the context of the issue and what to do next. Select a due date, add notes, and select **Export all remediation activity data to CSV** so you can attach it to an email for follow-up.

4. **Submit request**. You will see a confirmation message that the remediation task has been created.
   ![Remediation task creation confirmation](images/tvm_remediation_task_created.png)

5. Save your CSV file.
   ![Save csv file](images/tvm_save_csv_file.png)

6. Send a follow-up email to your IT Administrator and allow the time that you have allotted for the remediation to propagate in the system.

7. Review the **Microsoft Secure Score for Devices** card again on the dashboard. The number of security controls recommendations will decrease. When you select **Security controls** to go back to the **Security recommendations** page, the item that you have addressed will not be listed there anymore, and your Microsoft Secure Score for Devices should increase.

>[!IMPORTANT]
>To boost your vulnerability assessment detection rates, download the following mandatory security updates and deploy them in your network:
>- 19H1 customers | [KB 4512941](https://support.microsoft.com/help/4512941/windows-10-update-kb4512941)
>- RS5 customers | [KB 4516077](https://support.microsoft.com/help/4516077/windows-10-update-kb4516077)
>- RS4 customers | [KB 4516045](https://support.microsoft.com/help/4516045/windows-10-update-kb4516045)
>- RS3 customers | [KB 4516071](https://support.microsoft.com/help/4516071/windows-10-update-kb4516071)
>
>To download the security updates:
>1. Go to [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/home.aspx).
>2. Key-in the security update KB number that you need to download, then click **Search**.  

## Related topics

- [Threat & Vulnerability Management overview](next-gen-threat-and-vuln-mgt.md)
- [Supported operating systems and platforms](tvm-supported-os.md)
- [Threat & Vulnerability Management dashboard](tvm-dashboard-insights.md)
- [Exposure score](tvm-exposure-score.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Remediation and exception](tvm-remediation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
- [APIs](threat-and-vuln-mgt-scenarios.md#apis)
- [Configure data access for Threat & Vulnerability Management roles](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/user-roles#create-roles-and-assign-the-role-to-an-azure-active-directory-group)
