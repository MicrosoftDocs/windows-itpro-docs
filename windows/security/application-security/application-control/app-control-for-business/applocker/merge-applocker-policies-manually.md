---
title: Merge AppLocker policies manually
description: This article for IT professionals describes the steps to manually merge AppLocker policies to update the Group Policy Object (GPO).
ms.localizationpriority: medium
ms.topic: conceptual
ms.date: 09/11/2024
---

# Merge AppLocker policies manually

This article for IT professionals describes the steps to manually merge AppLocker policies to update the Group Policy Object (GPO).

If you need to merge multiple AppLocker policies into a single one, you can either manually merge the policies or use the Windows PowerShell cmdlets for AppLocker. You can't automatically merge policies by using the AppLocker console. For info about merging policies by using Windows PowerShell, see [Merge AppLocker policies by using Set-ApplockerPolicy](merge-applocker-policies-by-using-set-applockerpolicy.md).

The AppLocker policy is stored in XML format, and an exported policy can be edited with any text or XML editor. To export an AppLocker policy, see [Export an AppLocker policy to an XML file](export-an-applocker-policy-to-an-xml-file.md). Before making changes to an AppLocker policy manually, review [Working with AppLocker rules](working-with-applocker-rules.md).

Membership in the local **Administrators** group, or equivalent, is the minimum required to complete this procedure.

## To merge two or more AppLocker policies

1. Open an XML policy file in a text editor or XML editor, such as Notepad.
2. Select the rule collection where you want to copy rules from.
3. Select the rules that you want to add to another policy file, and then copy the text.
4. Open the policy where you want to add the copied rules.
5. Select and expand the rule collection where you want to add the rules.
6. At the bottom of the rule list for the collection, after the closing element, paste the rules that you copied from the first policy file. Verify that the opening and closing elements are intact, and then save the policy.
7. Upload the policy to a reference computer to ensure that it's functioning properly within the GPO.
