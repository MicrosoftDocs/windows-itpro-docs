---
title: Test an AppLocker policy by using Test-AppLockerPolicy
description: This topic for IT professionals describes the steps to test an AppLocker policy prior to importing it into a Group Policy Object (GPO) or another computer.
ms.reviewer: 
ms.author: vinpa
ms.prod: windows-client
ms.localizationpriority: medium
author: vinaypamnani-msft
manager: aaroncz
ms.topic: conceptual
ms.date: 09/21/2017
ms.technology: itpro-security
---

# Test an AppLocker policy by using Test-AppLockerPolicy

>[!NOTE]
>Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Windows Defender Application Control feature availability](/windows/security/threat-protection/windows-defender-application-control/feature-availability).

This topic for IT professionals describes the steps to test an AppLocker policy prior to importing it into a Group Policy Object (GPO) or another computer.

The **Test-AppLockerPolicy** Windows PowerShell cmdlet can be used to determine whether any of the rules in your rule collections will be blocked on your reference computer or the computer on which you maintain policies. Perform the following steps on any computer where the AppLocker policies are applied.

Any user account can be used to complete this procedure.

**To test an AppLocker policy by using Test-AppLockerPolicy**

1.  Export the effective AppLocker policy. To do this, you must use the **Get-AppLockerPolicy** Windows PowerShell cmdlet.

    1.  Open a Windows PowerShell command prompt window as an administrator.
    2.  Use the **Get-AppLockerPolicy** cmdlet to export the effective AppLocker policy to an XML file:

        `Get-AppLockerPolicy -Effective -XML > <PathofFiletoExport.XML>`

2.  Use the **Get-ChildItem** cmdlet to specify the directory that you want to test, specify the **Test-AppLockerPolicy** cmdlet with the XML file from the previous step to test the policy, and use the **Export-CSV** cmdlet to export the results to a file to be analyzed:

    `Get-ChildItem <DirectoryPathtoReview> -Filter <FileExtensionFilter> -Recurse | Convert-Path | Test-AppLockerPolicy -XMLPolicy <PathToExportedPolicyFile> -User <domain\username> -Filter <TypeofRuletoFilterFor> | Export-CSV <PathToExportResultsTo.CSV>`

The following shows example input for **Test-AppLockerPolicy**:

```syntax
PS C:\ Get-AppLockerPolicy -Effective -XML > C:\Effective.xml
PS C:\ Get-ChildItem 'C:\Program Files\Microsoft Office\' -filter *.exe -Recurse | Convert-Path | Test-AppLockerPolicy -XMLPolicy C:\Effective.xml -User contoso\zwie -Filter Denied,DeniedByDefault | Export-CSV C:\BlockedFiles.csv
```

In the example, the effective AppLocker policy is exported to the file C:\\Effective.xml. The **Get-ChildItem** cmdlet is used to recursively gather path names for the .exe files in C:\\Program Files\\Microsoft Office\\. The XMLPolicy parameter specifies that the C:\\Effective.xml file is an XML AppLocker policy file. By specifying the User parameter, you can test the rules for specific users, and the **Export-CSV** cmdlet allows the results to be exported to a comma-separated file. In the example, `-FilterDenied,DeniedByDefault` displays only those files that will be blocked for the user under the policy.
