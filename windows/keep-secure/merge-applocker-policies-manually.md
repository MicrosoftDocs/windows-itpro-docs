---
title: Merge AppLocker policies manually (Windows 10)
description: This topic for IT professionals describes the steps to manually merge AppLocker policies to update the Group Policy Object (GPO).
MSHAttr: PreferredLib /library
ms.assetid: 3605f293-e5f2-481d-8efd-775f9f23c30f
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Merge AppLocker policies manually


**Applies to**

-   Windows 10

This topic for IT professionals describes the steps to manually merge AppLocker policies to update the Group Policy Object (GPO).

If you have created multiple AppLocker policies and need to merge them to create one AppLocker policy, you can either manually merge the policies or use the Windows PowerShell cmdlets for AppLocker. You cannot automatically merge policies by using the AppLocker console. You must create one rule collection from two or more policies. For info about merging policies by using the cmdlet, see [Merge AppLocker policies by using Set-ApplockerPolicy](merge-applocker-policies-by-using-set-applockerpolicy.md).

The AppLocker policy is saved in XML format, and the exported policy can be edited with any text or XML editor. Rule collections are specified within the **RuleCollection Type** element. The XML schema includes five attributes for the different rule collections, as shown in the following table:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Rule collection</th>
<th align="left">RuleCollection Type element</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Executable rules</p></td>
<td align="left"><p>Exe</p></td>
</tr>
<tr class="even">
<td align="left"><p>Windows Installer rules</p></td>
<td align="left"><p>Msi</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Script rules</p></td>
<td align="left"><p>Script</p></td>
</tr>
<tr class="even">
<td align="left"><p>DLL rules</p></td>
<td align="left"><p>Dll</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Packaged apps and packaged app installers</p></td>
<td align="left"><p>Appx</p></td>
</tr>
</tbody>
</table>

 

Rule enforcement is specified with the **EnforcementMode** element. The three enforcement modes in the XML correspond to the three enforcement modes in the AppLocker console, as shown in the following table:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">XML enforcement mode</th>
<th align="left">Enforcement mode in Group Policy</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>NotConfigured</p></td>
<td align="left"><p>Not configured (rules are enforced)</p></td>
</tr>
<tr class="even">
<td align="left"><p>AuditOnly</p></td>
<td align="left"><p>Audit only</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Enabled</p></td>
<td align="left"><p>Enforce rules</p></td>
</tr>
</tbody>
</table>

 

Each of the three condition types use specific elements. For XML examples of the different rule types, see Merge AppLocker policies manually.

Membership in the local **Administrators** group, or equivalent, is the minimum required to complete this procedure.

**To merge two or more AppLocker policies**

1.  Open an XML policy file in a text editor or XML editor, such as Notepad.

2.  Select the rule collection where you want to copy rules from.

3.  Select the rules that you want to add to another policy file, and then copy the text.

4.  Open the policy where you want to add the copied rules.

5.  Select and expand the rule collection where you want to add the rules.

6.  At the bottom of the rule list for the collection, after the closing element, paste the rules that you copied from the first policy file. Verify that the opening and closing elements are intact, and then save the policy.

7.  Upload the policy to a reference computer to ensure that it is functioning properly within the GPO.

 

 





