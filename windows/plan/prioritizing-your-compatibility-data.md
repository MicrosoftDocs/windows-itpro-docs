---
title: Prioritizing Your Compatibility Data (Windows 10)
ms.assetid: 103e125a-bd2b-4019-9d6a-2e1d50c380b1
description: 
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# Prioritizing Your Compatibility Data


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

You can prioritize your applications, websites, computers, and devices to help customize and filter your compatibility reports. The priority levels are:

-   **Priority 1 - Business Critical**. The highest priority level, applied to an item that is so important to your organization that a compatibility issue with the item would keep you from deploying a new operating system.

-   **Priority 2 - Important**. Items that your organization regularly uses but can function without.

-   **Priority 3 - Nice to Have**. Lower-priority items that you want to show in your compatibility reports that do not belong in either of the previous two categories.

-   **Priority 4 - Unimportant**. Items that are irrelevant to the daily functions of your organization.

-   **Unspecified**. The default priority level, applied to items that have not yet been reviewed for deployment.

## Prioritizing Your Applications, Computers, Devices, and Websites


The following example uses the **&lt;Operating\_System&gt; - Application Report** screen. You can alternatively use the **&lt;Application\_Name&gt;** dialog box. The procedure is the same on the reports for computers, devices, and websites.

**To change the priority**

1.  On the **&lt;Operating\_System&gt; - Application Report** screen, click the name of the application.

2.  On the **Actions** menu, click **Set Priority**.

3.  Click a priority, and then click **OK**.

**To filter your data by priority**

1.  On the **&lt;Operating\_System&gt; - Application Report** screen, click **Toggle Filter**.

2.  Enter your filter criteria, pressing the Tab key to add clauses.

    Consider the following example, which shows a query that filters for all applications that have a priority level of **Business Critical** or **Important**.

    <table>
    <colgroup>
    <col width="25%" />
    <col width="25%" />
    <col width="25%" />
    <col width="25%" />
    </colgroup>
    <thead>
    <tr class="header">
    <th align="left">And/Or</th>
    <th align="left">Field</th>
    <th align="left">Operator</th>
    <th align="left">Value</th>
    </tr>
    </thead>
    <tbody>
    <tr class="odd">
    <td align="left"><p>And</p></td>
    <td align="left"><p>Priority</p></td>
    <td align="left"><p>Equals</p></td>
    <td align="left"><p>Priority 1 - Business Critical</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Or</p></td>
    <td align="left"><p>Priority</p></td>
    <td align="left"><p>Equals</p></td>
    <td align="left"><p>Priority 2 - Important</p></td>
    </tr>
    </tbody>
    </table>

     

    To delete a clause, right-click the row, and then click **Delete Clause**.

3.  Click **Refresh**.

    Your filtered results appear.

 

 





