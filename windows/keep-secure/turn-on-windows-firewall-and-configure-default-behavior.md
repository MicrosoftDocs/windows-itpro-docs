---
title: Turn on Windows Firewall and Configure Default Behavior (Windows 10)
description: Turn on Windows Firewall and Configure Default Behavior
ms.assetid: 3c3fe832-ea81-4227-98d7-857a3129db74
author: brianlic-msft
---

# Turn on Windows Firewall and Configure Default Behavior


To enable Windows Firewall and configure its default behavior, use the Windows Firewall with Advanced Security node (for Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, and Windows Server 2008 R2) in the Group Policy Management MMC snap-in.

**Administrative credentials**

To complete these procedures, you must be a member of the Domain Administrators group, or otherwise be delegated permissions to modify the GPOs.

## <a href="" id="bkmk-1"></a>


**To enable Windows Firewall and configure the default behavior on Windows 8, Windows 7, Windows Vista, Windows Server 2012, Windows Server 2008, or Windows Server 2008 R2**

1.  [Open the Group Policy Management Console to Windows Firewall with Advanced Security](../p_server_archive/open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md).

2.  In the details pane, in the **Overview** section, click **Windows Firewall Properties**.

3.  For each network location type (Domain, Private, Public), perform the following steps.

    **Note**  
    The steps shown here indicate the recommended values for a typical deployment. Use the settings that are appropriate for your firewall design.

     

    1.  Click the tab that corresponds to the network location type.

    2.  Change **Firewall state** to **On (recommended)**.

    3.  Change **Inbound connections** to **Block (default)**.

    4.  Change **Outbound connections** to **Allow (default)**.

 

 





