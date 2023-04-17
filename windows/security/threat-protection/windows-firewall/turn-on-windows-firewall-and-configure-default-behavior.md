---
title: Turn on Windows Defender Firewall with Advanced Security and Configure Default Behavior (Windows)
description: Turn on Windows Defender Firewall with Advanced Security and Configure Default Behavior
ms.prod: windows-client
ms.topic: conceptual
ms.date: 09/08/2021
appliesto: 
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10 and later</a>
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/windows-server-release-info" target="_blank">Windows Server 2016 and later</a>
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

 

 





