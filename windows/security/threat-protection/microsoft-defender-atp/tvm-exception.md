---
title: File an exception for a security recommendation - threat and vulnerability management
description: Create and monitor exceptions for security recommendations in threat and vulnerability management. 
keywords: microsoft defender atp tvm remediation, mdatp tvm, threat and vulnerability management, threat & vulnerability management, threat & vulnerability management remediation, tvm remediation intune, tvm remediation sccm
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
ms.collection: 
- m365-security-compliance 
- m365initiative-defender-endpoint 
ms.topic: conceptual
---
# File an exception for a security recommendation - threat and vulnerability management

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]


**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

As an alternative to a remediation request, you can create exceptions for recommendations.

There are many reasons why organizations create exceptions for a recommendation. For example, if there's a business justification that prevents the company from applying the recommendation, the existence of a compensating or alternative control that provides as much protection than the recommendation would, a false positive, among other reasons.

When an exception is created for a recommendation, the recommendation is no longer active. The recommendation state changes to **Exception**, and it no longer shows up in the security recommendations list.

1. Select a security recommendation you would like to create an exception for, and then **Exception options**.
![Showing where the button for "exception options" is location in a security recommendation flyout.](images/tvm-exception-option.png)

2. Select your justification for the exception you need to file instead of remediating the security recommendation in question. Fill out the justification context, then set the exception duration.

    The following list details the justifications behind the exception options:

    - **Third party control** - A third party product or software already addresses this recommendation
        - Choosing this justification type will lower your exposure score and increase you secure score because your risk is reduced
    - **Alternate mitigation** - An internal tool already addresses this recommendation
        - Choosing this justification type will lower your exposure score and increase you secure score because your risk is reduced
    - **Risk accepted** - Poses low risk and/or implementing the recommendation is too expensive
    - **Planned remediation (grace)** - Already planned but is awaiting execution or authorization

3. Select **Submit**. A confirmation message at the top of the page indicates that the exception has been created.

## View your exceptions

When you file for an exception from the [Security recommendations page](tvm-security-recommendation.md), you create an exception  for that security recommendation. You can file exceptions to exclude certain recommendation from showing up in reports and affecting your [Microsoft Secure Score for Devices](tvm-microsoft-secure-score-devices.md).

The exceptions you've filed will show up in the **Remediation** page, in the **Exceptions** tab. You can filter your view based on exception justification, type, and status.  

![Example of the exception page and filter options.](images/tvm-exception-filters.png)

### Exception actions and statuses

You can take the following actions on an exception:

- Cancel - You can cancel the exceptions you've filed anytime
- Resurface - Your exception automatically becomes void and resurfaces in the security recommendation list when dynamic environmental factors change. It adversely affects the exposure impact associated with a recommendation that had previously been excluded.

The following statuses will be a part of an exception:

- **Canceled** - The exception has been canceled and is no longer in effect  
- **Expired** - The exception that you've filed is no longer in effect
- **In effect** - The exception that you've filed is in progress

### Exception impact on scores

Creating an exception can potentially affect the Exposure Score (for both types of weaknesses) and Microsoft Secure Score for Devices of your organization in the following manner:

- **No impact** - Removes the recommendation from the lists (which can be reverse through filters), but will not affect the scores.
- **Mitigation-like impact** - As if the recommendation was mitigated (and scores will be adjusted accordingly) when you select it as a compensating control.
- **Hybrid** - Provides visibility on both No impact and Mitigation-like impact. It shows both the Exposure Score and Microsoft Secure Score for Devices results out of the exception option that you made.

The exception impact shows on both the Security recommendations page column and in the flyout pane.

![Screenshot identifying the impact sections which list score impacts in the full page security recommendations table, and the flyout.](images/tvm-exception-impact.png)

### View exceptions in other places

Select **Show exceptions** at the bottom of the **Top security recommendations** card in the dashboard. It will open a filtered view in the **Security recommendations** page of recommendations with an "Exception" status.

![Screenshot of Show exceptions link in the Top security recommendations card in the dashboard.](images/tvm-exception-dashboard.png)

## Related topics

- [Threat and vulnerability management overview](next-gen-threat-and-vuln-mgt.md)
- [Supported operating systems and platforms](tvm-supported-os.md)
- [Threat and vulnerability management dashboard](tvm-dashboard-insights.md)
- [Exposure score](tvm-exposure-score.md)
- [Microsoft Secure Score for Devices](tvm-microsoft-secure-score-devices.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Software inventory](tvm-software-inventory.md)
- [Weaknesses](tvm-weaknesses.md)
- [Event timeline](threat-and-vuln-mgt-event-timeline.md)
- [Scenarios](threat-and-vuln-mgt-scenarios.md)
- [APIs](next-gen-threat-and-vuln-mgt.md#apis)
- [Configure data access for threat and vulnerability management roles](user-roles.md#create-roles-and-assign-the-role-to-an-azure-active-directory-group)
