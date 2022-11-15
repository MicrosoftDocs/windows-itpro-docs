---
title: Turn on Windows Defender Firewall with Advanced Security and Configure Default Behavior (Windows)
description: Turn on Windows Defender Firewall with Advanced Security and Configure Default Behavior
ms.reviewer: jekrynit
ms.author: paoloma
ms.prod: windows-client
ms.localizationpriority: medium
author: paolomatarazzo
manager: aaroncz
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/08/2021
ms.technology: itpro-security
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
  - ✅ <b>Windows Server 2016</b>
  - ✅ <b>Windows Server 2019</b>
  - ✅ <b>Windows Server 2022</b>
---

# Turn on Windows Defender Firewall with Advanced Security and Configure Default Behavior


To enable Windows Defender Firewall with Advanced Security and configure its default behavior, use the Windows Defender Firewall with Advanced Security node in the Group Policy Management console.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

## To enable Windows Defender Firewall and configure the default behavior

1.  Open the Group Policy Management Console to [Windows Defender Firewall with Advanced Security](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the details pane, in the **Overview** section, click **Windows Defender Firewall Properties**.

3.  For each network location type (Domain, Private, Public), perform the following steps.

    >**Note:**  The steps shown here indicate the recommended values for a typical deployment. Use the settings that are appropriate for your firewall design.

    1.  Click the tab that corresponds to the network location type.

    2.  Change **Firewall state** to **On (recommended)**.

    3.  Change **Inbound connections** to **Block (default)**.

    4.  Change **Outbound connections** to **Allow (default)**.

 

 





