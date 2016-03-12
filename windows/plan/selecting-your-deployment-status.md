---
title: Selecting Your Deployment Status (Windows 10)
description: In Application Compatibility Manager (ACM) you can track the deployment status of your applications and websites.
MSHAttr: PreferredLib /library
ms.assetid: 7735d256-77eb-4498-93aa-c838ee6e00fc
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# Selecting Your Deployment Status


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

In Application Compatibility Manager (ACM), you can track the deployment status of your applications and websites.

## Selecting Your Deployment Status


You can change the deployment status from both the report screen and the associated report dialog box.

**Note**  
The following examples use the **&lt;Operating\_System&gt; - Application Report** screen. You can alternatively use the **&lt;Application\_Name&gt;** dialog box. The procedure is the same for setting deployment status on the report for websites.

 

**To change the deployment status of an application**

1.  On the **&lt;Operating\_System&gt; - Application Report** screen, click the application name.

2.  On the **Actions** menu, click **Set Deployment Status**.

3.  Select one of the following options:

    -   **Not Reviewed** (default)

    -   **Testing**

    -   **Mitigating**

    -   **Ready to Deploy**

    -   **Will Not Deploy**

4.  Click **OK**.

## Filtering By Deployment Status


You can filter your applications and websites by your deployment status.

**To filter based on deployment status**

1.  On the **&lt;Operating\_System&gt; - Application Report** screen, click **Toggle Filter**.

    The **Query Builder** appears with a blank row.

2.  In the **Query Builder**, enter your filter criteria, pressing the Tab key to add clauses.

    For example, the following query filters for applications with a deployment status of **Mitigating** or **Ready to Deploy**.

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
    <td align="left"><p>Deployment Status</p></td>
    <td align="left"><p>Equals</p></td>
    <td align="left"><p>Mitigating</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Or</p></td>
    <td align="left"><p>Deployment Status</p></td>
    <td align="left"><p>Equals</p></td>
    <td align="left"><p>Ready to Deploy</p></td>
    </tr>
    </tbody>
    </table>

     

    To delete a clause, right-click the row, and then click **Delete Clause**.

3.  Click **Refresh**.

    Your filtered results appear.

 

 





