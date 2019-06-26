---
title: Weaknesses
description: The **Weaknesses** page lists down the vulnerabilities found in the infected software running in your organization, their severity, Common Vulnerability Scoring System (CVSS) rating, its prevalence in your organization, breach, and threat insights.    
keywords: mdatp threat & vulnerability management, mdatp tvm weaknesses page, finding weaknesses through tvm, tvm vulnerability list, vulnerability details in tvm 
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
# Weaknesses
**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

Threat & Vulnerability Management leverages the same signals in Microsoft Defender ATP's endpoint protection to scan and detect vulnerabilities.

The **Weaknesses** page lists down the vulnerabilities found in the infected software running in your organization, their severity, Common Vulnerability Scoring System (CVSS) rating, its prevalence in your organization, corresponding breach, and threat insights. 

## Navigate through weaknesses page
You can see the list of vulnerabilities in two ways: 

*Global search*
1. Click the global search drop-down menu.
2. Select **Vulnerability** and key-in the Common Vulnerabilities and Exposures (CVE) ID that you are looking for. The **Weaknesses** page opens with the list of the vulnerabilities and details. 

*Weaknesses page in the menu* 
1. Go to the Threat & Vulnerability Management navigation menu and select **Weaknesses** to open up the list of vulnerabilities found in your organization.
2. Select the vulnerability that you want to investigate to open up a fly-in page with the vulnerability details, such as: CVE description, CVE ID, exploits available, severity, publish, and update dates.    

## How it works
When new vulnerabilities are released, you would want know how many of your assets are exposed. You can see the list of vulnerabilities and the details in the **Weaknesses** page. If the **Exposed Machines** column shows, 0, that means you are not infected. 

If there's a number in the **Exposed Machines**, that means you need to remediate the vulnerabilities in those machines because they  put the rest of your assets and your organization at risk. 

You can also see the related alert and threat insights in the **Threat** column.

 >[!NOTE]
 > Always prioritize recommendations that are associated with ongoing threats. These recommendations are marked with the threat insight ![threat insight](images/tvm_bug_icon.png) icon and possible active alert ![possible active alert](images/tvm_alert_icon.png) icon.  


## Related topics
- [Risk-based Threat & Vulnerability Management](next-gen-threat-and-vuln-mgt.md) 
- [Threat & Vulnerability Management dashboard overview](tvm-dashboard-insights.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
- [Security recommendation](tvm-security-recommendation.md)
- [Remediation](tvm-remediation.md)
- [Software inventory](tvm-software-inventory.md)
