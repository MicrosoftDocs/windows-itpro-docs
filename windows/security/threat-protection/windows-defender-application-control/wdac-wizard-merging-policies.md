---
title: Windows Defender Application Control Wizard Policy Merging Operation
description: Merging multiple policies into a single application control policy with the Microsoft WDAC Wizard.
keywords: allowlisting, blocklisting, security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jgeurten
ms.reviewer: isbrahm
ms.author: dansimp
manager: dansimp
ms.topic: conceptual
ms.date: 10/14/2020
ms.technology: mde
---

# Merging existing policies with the WDAC Wizard

Beginning in Windows 10 version 1903, WDAC supports multiple policies. Before version 1903, however, Windows 10 could only have one WDAC policy. Consequently, users were required to merge multiple WDAC policies into one. The WDAC Wizard has a simple to use user interface to allow users to merge multiple WDAC policies. The Wizard can support up to 15 policy files as input during the merge workflow.  

Select the policies you wish to merge into one policy using the `+ Add Policy` button under the table. Once added, policies will be enumerated within the table. To remove a policy from the table, if accidentally added, highlight the policy row and select the `- Remove Policy` button. Confirmation will be required before the policy is withdrawn from the table. 

> [!NOTE]
> The policy type and ID of the final output policy will be determined based on the type and ID of the **first policy** in the policy list table. For instance, if a legacy policy format policy and a multi-policy format policy are merged together, the output format of the policy will be whichever policy is specified first in the table. For more information on policy formats, visit the [Multiple WDAC Policies page](deploy-multiple-windows-defender-application-control-policies.md).

Lastly, select a filepath save location for the final merged policy using the `Browse` button. If a minimum of two policies are selected, and the save location is specified, select the `Next` button to build the policy. 

![Merging WDAC policies into a final WDAC policy.](images/wdac-wizard-merge.png)
