---
title: Remediation
description: You can lower down your organization's exposure from vulnerabilities and increase your security configuration by remediating the security recommendations. Threat & Vulnerability Management bridges the gap between security administration and IT administration during remediation process. It does so by creating a security task or ticket through integration with Microsoft Intune and Microsoft System Center Configuration Manager (SCCM). 
keywords: microsoft defender atp tvm remediation, mdatp tvm, threat & vulnerability management, threat & vulnerability management remediation, tvm remediation intune, tvm remediation sccm
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
ms.topic: conceptual
ms.date: 04/11/2019
---
# Remediation
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>[!NOTE]
>To use this capability, enable your Microsoft Intune connections. Navigate to **Settings** > **General** > **Advanced features**. Scroll down and look for **Microsoft Intune connection**. By default, the toggle is turned off. Turn your **Microsoft Intune connection** toggle on.

After your organization's cybersecurity weaknesses are identified and mapped to actionable security recommendations, you can start creating security tasks through the integration with Microsoft Intune where remediation tickets are created.

You can lower down your organization's exposure from vulnerabilities and increase your security configuration by remediating the security recommendations.

## Navigate through your remediation options 
You'll see your remediation options when you select one of the security recommendation blocks from your **Top security recommendations** widget in the dashboard. 
1. From the fly-in page, you'll see the security recommendation details including your next steps. Click **Remediation options**.
2. In the **Remediation options** page, select **Open a ticket in Intune (for AAD joined devices)**. 

>[!NOTE]
>If your request involves remediating more than 10,000 machines, we will only send 10,000 machines for remediation to Intune.

3. Select a remediation due date.
4. Add notes to give your IT administrator a context of your remediation request. For example, you can indicate urgency of the remediation request to avoid potential exposure to a recent exploit activity, or if the request is a part of compliance. 

If you want to check how the ticket shows up in Intune, see [Use Intune to remediate vulnerabilities identified by Microsoft Defender ATP](https://docs.microsoft.com/en-us/intune/atp-manage-vulnerabilities) for details.

## How it works

When you submit a remediation request from Threat & Vulnerability Management, it kicks-off a remediation activity. 

It creates a security task which will be tracked in Threat & Vulnerability Management **Remediation page**, and it also creates a remediation ticket in Microsoft Intune.

You also have the option to export all remediation activity data to CSV for records, reporting purposes, or if you want to notify your IT administration counterpart that a remediation ticket has been submitted. 

The dashboard will show that status of your top remediation activities. Click any of the entries and it will take you to the **Remediation** page. You can mark the remediation activity as completed after the IT administration team remediates the task. 

## Related topics
- [Risk-based Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md) 
- [Threat & Vulnerability Management dashboard overview](tvm-dashboard-insights.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
- [Security recommendation](tvm-security-recommendation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)


