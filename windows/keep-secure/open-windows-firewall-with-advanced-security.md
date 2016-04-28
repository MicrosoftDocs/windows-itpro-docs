---
title: Open Windows Firewall with Advanced Security (Windows 10)
description: Open Windows Firewall with Advanced Security
ms.assetid: 788faff2-0f50-4e43-91f2-3e2595c0b6a1
author: brianlic-msft
---

# Open Windows Firewall with Advanced Security


This procedure shows you how to open the Windows Firewall with Advanced Security MMC snap-in.

**Administrative credentials**

To complete this procedure, you must be a member of the Administrators group. For more information, see Additional considerations.

## Opening Windows Firewall with Advanced Security


-   [Using the Windows interface](#bkmk-proc1)

-   [Using a command line](#bkmk-proc2)

## <a href="" id="bkmk-proc1"></a>


**To open Windows Firewall with Advanced Security by using the Windows interface**

-   Click the **Start** charm, right-click the Start page, click **All Apps**, and then click the **Windows Firewall with Advanced Security** tile.

## <a href="" id="bkmk-proc2"></a>


**To open Windows Firewall with Advanced Security from a command prompt**

1.  Open a command prompt window.

2.  At the command prompt, type:

    ``` syntax
    wf.msc
    ```

**Additional considerations**

Although standard users can start the Windows Firewall with Advanced Security MMC snap-in, to change most settings the user must be a member of a group with the permissions to modify those settings, such as Administrators.

 

 





