---
title: Create and view exceptions for security recommendations - threat and vulnerability management
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
# Create and view exceptions for security recommendations - threat and vulnerability management

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Threat and vulnerability management](next-gen-threat-and-vuln-mgt.md)

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-portaloverview-abovefoldlink)

Sometimes, you may not be able to take the remediation steps suggested by a security recommendation. If that is the case, threat and vulnerability management gives you an avenue to create an exception.

When an exception is created for a recommendation, the recommendation is no longer active. The recommendation state changes to **Exception**, and no longer shows up in the security recommendations list.

## Create an exception

1. Go to the threat and vulnerability management navigation menu in the Microsoft Defender Security Center, and select [**Security recommendations**](tvm-security-recommendation.md).

2. Select a security recommendation you would like to create an exception for, and then **Exception options**.
![Showing where the button for "exception options" is location in a security recommendation flyout.](images/tvm-exception-option.png)

3. Select your justification for the exception you need to file instead of remediating the security recommendation in question. Fill out the justification context, then set the exception duration.

    The following list details the justifications behind the exception options:

    - **Third party control** - A third party product or software already addresses this recommendation
        - Choosing this justification type will lower your exposure score and increase you secure score because your risk is reduced
    - **Alternate mitigation** - An internal tool already addresses this recommendation
        - Choosing this justification type will lower your exposure score and increase you secure score because your risk is reduced
    - **Risk accepted** - Poses low risk and/or implementing the recommendation is too expensive
    - **Planned remediation (grace)** - Already planned but is awaiting execution or authorization

4. Select **Submit**. A confirmation message at the top of the page indicates that the exception has been created.

## View your exceptions

When you file for an exception from the security recommendations page, you create an exception  for that security recommendation. You can file exceptions to exclude certain recommendation from showing up in reports and affecting your [Microsoft Secure Score for Devices](tvm-microsoft-secure-score-devices.md).

The exceptions you've filed will show up in the **Remediation** page, in the **Exceptions** tab. You can filter your view based on exception justification, type, and status.  

![Example of the exception page and filter options.](images/tvm-exception-filters.png)

### Exception actions and statuses

Once an exception exists, you can cancel it at any time by going to the exception in the **Remediation** page and selecting **Cancel exception**.

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
- [Remediate vulnerabilities](tvm-remediation.md)
- [Security recommendations](tvm-security-recommendation.md)
- [Exposure score](tvm-exposure-score.md)
- [Microsoft Secure Score for Devices](tvm-microsoft-secure-score-devices.md)
