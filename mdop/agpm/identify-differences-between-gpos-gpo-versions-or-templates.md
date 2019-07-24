---
title: Identify Differences Between GPOs, GPO Versions, or Templates
description: Identify Differences Between GPOs, GPO Versions, or Templates
author: mjcaparas
ms.assetid: 6320afc4-af81-47e8-9f4c-463ff99d5a53
ms.reviewer: 
manager: dansimp
ms.author: macapara
ms.pagetype: mdop
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Identify Differences Between GPOs, GPO Versions, or Templates


You can generate HTML-based or XML-based difference reports to analyze the differences between Group Policy objects (GPOs), templates, or different versions of a GPO.

A user account with the Reviewer, Editor, Approver, or AGPM Administrator (Full Control) role or necessary permissions in Advanced Group Policy Management is required to complete this procedure. Review the details in "Additional considerations" in this topic.

## Identifying differences between GPOs, GPO versions, or templates


-   [Between two GPOs or templates](#bkmk-two-gpos)

-   [Between a GPO and a template](#bkmk-gpo-and-template)

-   [Between two versions of one GPO](#bkmk-two-versions)

-   [Between a GPO version and a template](#bkmk-gpo-version-and-template)

## <a href="" id="bkmk-two-gpos"></a>


**To identify differences between two GPOs or templates**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab in the details pane, click a tab to display GPOs (or templates, if comparing two templates).

3.  Select the two GPOs or templates.

4.  Right-click one of the GPOs or templates, click **Differences**, and then click **HTML Report** or **XML Report** to display a difference report summarizing the settings of the GPOs or templates.

### <a href="" id="bkmk-gpo-and-template"></a>

**To identify differences between a GPO and a template**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab in the details pane, click a tab to display GPOs (or templates, if comparing two templates).

3.  Right-click the GPO, click **Differences**, and then click **Template**.

4.  Select the template and type of report, and then click **OK** to display a difference report summarizing the settings of the GPO and template.

### <a href="" id="bkmk-two-versions"></a>

**To identify differences between two versions of one GPO**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab in the details pane, click a tab to display GPOs (or templates, if comparing two templates).

3.  Double-click the GPO to display its history, and then highlight the versions to be compared.

4.  Right-click one of the versions, click **Differences**, and then click **HTML Report** or **XML Report** to display a difference report summarizing the settings of the GPOs.

### <a href="" id="bkmk-gpo-version-and-template"></a>

**To identify differences between a GPO version and a template**

1.  In the **Group Policy Management Console** tree, click **Change Control** in the forest and domain in which you want to manage GPOs.

2.  On the **Contents** tab in the details pane, click a tab to display GPOs (or templates, if comparing two templates).

3.  Double-click the GPO to display its history.

4.  Right-click the GPO version of interest, click **Differences**, and then click **Template**.

5.  Select the template and type of report, and then click **OK** to display a difference report summarizing the settings of the GPO version and template.

## Key to difference reports


<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Symbol</th>
<th align="left">Meaning</th>
<th align="left">Color</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>None</p></td>
<td align="left"><p>Item exists with identical settings in both GPOs</p></td>
<td align="left"><p>Varies with level</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>[#]</strong></p></td>
<td align="left"><p>Item exists in both GPOs, but with changed settings</p></td>
<td align="left"><p>Blue</p></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>[-]</strong></p></td>
<td align="left"><p>Item exists only in the first GPO</p></td>
<td align="left"><p>Red</p></td>
</tr>
<tr class="even">
<td align="left"><p><strong>[+]</strong></p></td>
<td align="left"><p>Item exists only in the second GPO</p></td>
<td align="left"><p>Green</p></td>
</tr>
</tbody>
</table>

 

-   For items with changed settings, the changed settings are identified when the item is expanded. The value for the attribute in each GPO is displayed in the same order that the GPOs are displayed in the report.

-   Some changes to settings may cause an item to be reported as two different items (one present only in the first GPO, one present only in the second) rather than as one item that has changed.

### Additional considerations

-   By default, you must be a Reviewer, an Editor, an Approver, or an AGPM Administrator (Full Control) to perform this procedure. Specifically, you must have **List Contents** and **Read Settings** permissions for the GPO. Also, to display the list of GPOs, you must have **List Contents** permission for the domain.

### Additional references

-   [Performing Reviewer Tasks](performing-reviewer-tasks.md)

 

 





