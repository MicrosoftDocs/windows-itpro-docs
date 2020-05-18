---
title: Configure automated investigation and remediation capabilities
description: Set up your automated investigation and remediation capabilities in Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP).
keywords: configure, setup, automated, investigation, detection, alerts, remediation, response
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Configure automated investigation and remediation capabilities in Microsoft Defender Advanced Threat Protection

**Applies to**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

If your organization is using [Microsoft Defender Advanced Threat Protection](https://docs.microsoft.com/windows/security/threat-protection/) (Microsoft Defender ATP), [automated investigation and remediation capabilities](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations) can save your security operations team time and effort. 

Automated investigation and remediation capabilities mimic the ideal steps that a security analyst takes to investigate and remediate threats:
1. Investigate alerts that were triggered, and analyze evidence.
2. Remediate threats quickly, as appropriate.
3. Resolve alerts as remediation actions are taken, and update investigation status.
4. Find other impacted devices, and repeat steps 1-3 as necessary.

[Learn more about automated investigation and remediation](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations). 

## Configure automated investigation and remediation capabilities

To configure automated investigation and remediation, you turn the features on, and then you set up device groups.

### Turn on automated investigation and remediation

1. As a global administrator or security administrator, go to the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)) and sign in.
2. In the navigation pane, choose **Settings**.
3. In the **General** section, select **Advanced features**.
4. Turn on both **Automated Investigation** and **Automatically resolve alerts**.

### Set up device groups

1. In the Microsoft Defender Security Center ([https://securitycenter.windows.com](https://securitycenter.windows.com)), on the **Settings** page, under **Permissions**, select **Device groups**.
2. Select **+ Add machine group**.
3. Create at least one device group, as follows:
   - Specify a name and description for the device group.
   - In the **Automation level list**, select a level, such as **Full – remediate threats automatically**.
   - In the **Members** section, you can use one or more conditions to identify and include devices.
   - On the **User access** tab, select the [Azure Active Directory groups](https://docs.microsoft.com/azure/active-directory/fundamentals/active-directory-manage-groups?context=azure/active-directory/users-groups-roles/context/ugr-context) who should have access to the device group you're creating.

The automation level determines whether remediation actions are taken automatically, or only upon approval. To learn more, see [How threats are remediated](https://docs.microsoft.com/windows/security/threat-protection/microsoft-defender-atp/automated-investigations#how-threats-are-remediated).