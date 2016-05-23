---
title: Selecting the Send and Receive Status for an Application (Windows 10)
description: For each application listed in Application Compatibility Manager (ACM), you can select whether to send and receive specific application data through the Microsoft Compatibility Exchange.
ms.assetid: ae139093-27cf-4ad8-882d-e0509e78d33a
ms.prod: w10
ms.mktglfcycl: plan
ms.pagetype: appcompat
ms.sitesec: library
author: TrudyHa
---

# Selecting the Send and Receive Status for an Application


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

For each application listed in Application Compatibility Manager (ACM), you can select whether to send and receive specific application data through the Microsoft Compatibility Exchange

. For information about how to send and receive data, see [Sending and Receiving Compatibility Data](sending-and-receiving-compatibility-data.md).

## Selecting the Send and Receive Status for an Application


**Note**  
The following example uses the **&lt;Operating\_System&gt; - Application Report** screen. You can alternatively use the **&lt;Application\_Name&gt;** dialog box.

 

**To change the send and receive status for an application**

1.  On the **&lt;Operating\_System&gt; - Application Report** screen, click the application name for which you want to select the send and receive status.

2.  On the **Actions** menu, click **Set Send and Receive Status**.

3.  Select one of the following:

    -   **Do not send to Microsoft**

    -   **Send to Microsoft** (default)

4.  Click **OK**.

**To filter based on send and receive status**

1.  On the **&lt;Operating\_System&gt; - Application Report** screen, click **Toggle Filter**.

2.  In the **Query Builder**, enter your filter criteria, pressing the Tab key to add clauses.

    To delete a clause, right-click the row, and then click **Delete Clause**.

    The following example shows a query that filters for applications with a send and receive status of **Do not send to Microsoft**.

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
    <td align="left"><p>Send and Receive Status</p></td>
    <td align="left"><p>Equals</p></td>
    <td align="left"><p>Do not send to Microsoft</p></td>
    </tr>
    </tbody>
    </table>

     

3.  Click **Refresh**.

    Your filtered results appear.

 

 





