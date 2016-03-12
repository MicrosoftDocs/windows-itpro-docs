---
title: Selecting Your Compatibility Rating (Windows 10)
description: You can rate the compatibility of your applications installation packages or websites based on whether they run successfully on a 32 bit or 64 bit operating system.
MSHAttr: PreferredLib /library
ms.assetid: 959da499-8fd6-4f32-8771-a0580dd8e0d3
ms.prod: W10
ms.mktglfcycl: operate
ms.sitesec: library
author: TrudyHa
---

# Selecting Your Compatibility Rating


**Applies to**

-   Windows 10
-   Windows 8.1
-   Windows 8
-   Windows 7
-   Windows Server 2012
-   Windows Server 2008 R2

You can rate the compatibility of your applications, installation packages, or websites, based on whether they run successfully on a 32-bit or 64-bit operating system. Your rating applies to your entire organization and is based on your own testing results and organizational requirements.

Possible ratings include:

-   **Works**. During your organization's testing phase, there were no issues with the application, installation package, or website.

-   **Works with minor issues or has solutions**. During your organization's testing phase, there were no Severity 1 or Severity 2 issues with the application, installation package, or website. For information about severity levels, see [Adding or Editing an Issue](adding-or-editing-an-issue.md).

-   **Does not work**. During your organization's testing phase, the application, installation package, or website experienced a Severity 1 or Severity 2 issue.

-   **No data**. You have no compatibility data to provide.

## Selecting a Compatibility Rating


You can select your compatibility rating from the report screen or from the associated dialog box that shows report details. As an example, the following procedures use the **&lt;Operating\_System&gt; - Application Report** screen. You can alternatively use the **&lt;Application\_Name&gt;** dialog box. The procedure is the same on the report for websites.

**To select your compatibility rating**

1.  On the **&lt;Operating\_System&gt; - Application Report** screen, click the application name.

2.  On the **Actions** menu, click **Set Assessment**.

3.  Choose your ratings. Select separate ratings for 32-bit operating systems and 64-bit operating systems, and then click **OK**.

    If your organization does not use a 32-bit operating system, or does not use a 64-bit operating system, you can hide the option in the **Customize Report Views** dialog box. If you hide the option, the associated column no longer appears in the **Set Assessment** dialog box.

## Filtering By Your Compatibility Ratings


You can filter your applications, installation packages, or website data by your compatibility ratings.

**To filter based on your compatibility ratings**

1.  On the **&lt;Operating\_System&gt; - Application Report** screen, click **Toggle Filter**.

2.  In the **Query Builder**, enter your filter criteria, pressing the Tab key to add additional clauses.

    For example, the following query will show applications with a rating of **Works** or a rating of **Works with minor issues or has solutions**.

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
    <td align="left"><p>My Assessment</p></td>
    <td align="left"><p>Equals</p></td>
    <td align="left"><p>Works</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p>Or</p></td>
    <td align="left"><p>My Assessment</p></td>
    <td align="left"><p>Equals</p></td>
    <td align="left"><p>Works with minor issues or has solutions</p></td>
    </tr>
    </tbody>
    </table>

     

    To delete a clause, right-click the row, and then click **Delete Clause**.

3.  Click **Refresh**.

 

 





